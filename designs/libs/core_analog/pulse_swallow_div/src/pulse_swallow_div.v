// -----------------------------------------------------------------------------
// Module 1: Divide-by-4/5 Static Prescaler (High-Speed Shift Register)
// -----------------------------------------------------------------------------
module prescaler_4_5 (
    input  wire clk_in,   
    input  wire rst_n,    
    input  wire mc,       
    output wire clk_out   
);
    // A 5-bit shift register eliminates the binary adder.
    // Combinational logic depth is reduced to exactly one 2:1 MUX.
    reg q0, q1, q2, q3, q4;

    always @(posedge clk_in or negedge rst_n) begin
        if (!rst_n) begin
            q0 <= 1'b1; // Initialize the walking '1'
            q1 <= 1'b0;
            q2 <= 1'b0;
            q3 <= 1'b0;
            q4 <= 1'b0;
        end else begin
            // If mc=0, feed back after 4 cycles. If mc=1, feed back after 5.
            q0 <= mc ? q4 : q3; 
            q1 <= q0;
            q2 <= q1;
            q3 <= q2;
            q4 <= q3;
        end
    end

    assign clk_out = q0;
endmodule

// -----------------------------------------------------------------------------
// Module 2: Program Counter (Divide by B)
// -----------------------------------------------------------------------------
module program_counter (
    input  wire clk,      
    input  wire rst_n,
    input  wire [5:0] b_val, 
    output reg  done      
);
    reg [5:0] cnt;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cnt  <= 6'd0;
            done <= 1'b0;
        end else if (cnt == 6'd0) begin
            cnt  <= b_val;
            done <= 1'b1;
        end else begin
            cnt  <= cnt - 1'b1;
            done <= 1'b0;
        end
    end
endmodule

// -----------------------------------------------------------------------------
// Module 3: Swallow Counter (Divide by A)
// -----------------------------------------------------------------------------
module swallow_counter (
    input  wire clk,      
    input  wire rst_n,
    input  wire load,     
    input  wire [1:0] a_val,
    output reg  mc        
);
    reg [1:0] cnt;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cnt <= 2'd0;
            mc  <= 1'b0;
        end else if (load) begin
            if (a_val > 2'd0) begin
                cnt <= a_val - 1'b1;
                mc  <= 1'b1;
            end else begin
                cnt <= 2'd0;
                mc  <= 1'b0;
            end
        end else if (cnt > 2'd0) begin
            cnt <= cnt - 1'b1;
            mc  <= 1'b1;
        end else begin
            mc  <= 1'b0;
        end
    end
endmodule

// -----------------------------------------------------------------------------
// Module 4: Top-Level Pulse-Swallow Divider
// -----------------------------------------------------------------------------
module pulse_swallow_div (
    input  wire clk_in,         
    input  wire rst_n,          
    input  wire [7:0] div_ctrl, 
    output wire clk_out         
);
    // The keep attribute prevents Yosys from absorbing this net, 
    // ensuring our SDC file can always find it for the generated clock.
    (* keep = "true" *) wire presc_clk;
    
    wire mc;
    wire pc_done;

    wire [5:0] b_val = div_ctrl[7:2] - 6'd1;
    wire [1:0] a_val = div_ctrl[1:0];

    prescaler_4_5 u_presc (
        .clk_in  (clk_in),
        .rst_n   (rst_n),
        .mc      (mc),
        .clk_out (presc_clk)
    );

    program_counter u_pc (
        .clk     (presc_clk),
        .rst_n   (rst_n),
        .b_val   (b_val),
        .done    (pc_done)
    );

    swallow_counter u_sc (
        .clk     (presc_clk),
        .rst_n   (rst_n),
        .load    (pc_done),
        .a_val   (a_val),
        .mc      (mc)
    );

    assign clk_out = pc_done;
endmodule