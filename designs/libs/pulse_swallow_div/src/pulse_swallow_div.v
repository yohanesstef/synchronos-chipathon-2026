// -----------------------------------------------------------------------------
// Module 1: Divide-by-2/3 Static Prescaler
// -----------------------------------------------------------------------------
// -----------------------------------------------------------------------------
// Module 1: Divide-by-2/3 Static Prescaler (With Forced Isolation)
// -----------------------------------------------------------------------------
module prescaler_2_3 (
    input  wire clk_in,   
    input  wire rst_n,    
    input  wire mc,       
    output wire clk_out   
);
    reg q1, q2;

    always @(posedge clk_in or negedge rst_n) begin
        if (!rst_n) begin
            q1 <= 1'b0;
            q2 <= 1'b0;
        end else begin
            q1 <= ~(q1 | q2);
            q2 <= q1 & mc;
        end
    end

    // The Structural Isolation Barrier
    // By forcing a double inversion, Yosys cannot electrically tie the 
    // downstream clock tree directly to the fragile q1 register.
    (* keep = "true" *) wire clk_inv = ~q1;
    (* keep = "true" *) wire clk_buf = ~clk_inv;
    
    assign clk_out = clk_buf;

endmodule

// -----------------------------------------------------------------------------
// Module 2: Program Counter (Divide by B)
// -----------------------------------------------------------------------------
module program_counter (
    input  wire clk,      // Prescaler output clock (~120 MHz)
    input  wire rst_n,
    input  wire [3:0] b_val, 
    output reg  done      // Reload pulse (1 prescaler clock cycle wide)
);
    reg [3:0] cnt;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cnt  <= 4'd0;
            done <= 1'b0;
        end else if (cnt == 4'd0) begin
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
    input  wire clk,      // Prescaler output clock (~120 MHz)
    input  wire rst_n,
    input  wire load,     // Driven by program_counter 'done'
    input  wire [3:0] a_val,
    output reg  mc        // Modulus control to prescaler
);
    reg [3:0] cnt;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cnt <= 4'd0;
            mc  <= 1'b0;
        end else if (load) begin
            if (a_val > 4'd0) begin
                cnt <= a_val - 1'b1;
                mc  <= 1'b1;
            end else begin
                cnt <= 4'd0;
                mc  <= 1'b0;
            end
        end else if (cnt > 4'd0) begin
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
    input  wire clk_in,         // 240 MHz from VCO
    input  wire rst_n,          // Async Reset
    input  wire [7:0] div_ctrl, // [7:4] = B, [3:0] = A
    output wire clk_out         // 24 MHz output to PFD
);
    wire presc_clk;
    wire mc;
    wire pc_done;

    // Mathematical correction applied directly in RTL: 
    // We pass B-1 to the program counter. We pass A directly to the swallow counter.
    wire [3:0] b_val = div_ctrl[7:4] - 4'd1;
    wire [3:0] a_val = div_ctrl[3:0];

    prescaler_2_3 u_presc (
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
