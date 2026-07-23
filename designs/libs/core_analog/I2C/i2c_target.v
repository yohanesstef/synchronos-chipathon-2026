`timescale 1ns / 1ps

module i2c_target #(
    parameter I2C_ADDR = 7'h50
)(
    input  wire clk,       // Internal high-speed clock
    input  wire rstn,      // Active-low reset
    input  wire scl,       // I2C Serial Clock
    input  wire sda_in,    // I2C Serial Data Input (from external bus/pad)
    output reg  sda_oe,    // I2C Serial Data Output Enable (1 = pull bus low for ACK, 0 = release bus)
    output reg  [15:0] div_ctrl // 16-bit parallel bus: [15:8] for N-divider, [7:0] for R-divider
);

    // Stage 1: Oversampling logic for glitch-free edge detection
    reg [2:0] scl_sync, sda_sync;
    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin 
            scl_sync <= 3'b111; 
            sda_sync <= 3'b111; 
        end else begin
            scl_sync <= {scl_sync[1:0], scl};
            sda_sync <= {sda_sync[1:0], sda_in}; // Cleanly sample unidirectional input
        end
    end

    wire scl_rise = (scl_sync[2:1] == 2'b01);
    wire scl_fall = (scl_sync[2:1] == 2'b10);
    wire sda_fall = (sda_sync[2:1] == 2'b10);
    wire sda_rise = (sda_sync[2:1] == 2'b01);
    wire scl_high = (scl_sync[1] == 1'b1);

    // I2C Start & Stop Conditions (SDA transitions while SCL is HIGH)
    wire start_cond = scl_high && sda_fall;
    wire stop_cond  = scl_high && sda_rise;

    // Stage 2: The I2C State Machine
    localparam IDLE=0, ADDR=1, ACK1=2, DATA=3, ACK2=4;
    reg [3:0] state;
    reg [7:0] shift_reg;
    reg [2:0] bit_cnt;
    reg       byte_sel; // 0 = Receiving Byte 1 (Upper 8 bits), 1 = Receiving Byte 2 (Lower 8 bits)

    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
            state <= IDLE;
            div_ctrl <= 16'b0;
            sda_oe <= 1'b0;
            bit_cnt <= 0;
            byte_sel <= 1'b0;
        end else if (start_cond) begin
            state <= ADDR;
            bit_cnt <= 7;
            sda_oe <= 1'b0;
            byte_sel <= 1'b0; // Reset byte selector on every new START
        end else if (stop_cond) begin
            state <= IDLE;
            sda_oe <= 1'b0;
        end else begin
            case (state)
                IDLE: begin
                    // Cleanly release SDA on the falling edge after ACK finishes
                    if (scl_fall) sda_oe <= 1'b0; 
                end
                ADDR: begin
                    if (scl_rise) begin
                        shift_reg <= {shift_reg[6:0], sda_sync[1]};
                        if (bit_cnt == 0) state <= ACK1;
                        else bit_cnt <= bit_cnt - 1;
                    end
                end
                ACK1: begin
                    if (scl_fall) sda_oe <= (shift_reg[7:1] == I2C_ADDR) ? 1'b1 : 1'b0; // ACK if Addr matches
                    if (scl_rise) begin
                        if (shift_reg[7:1] == I2C_ADDR && !shift_reg[0]) begin // Write matched
                            state <= DATA;
                            bit_cnt <= 7;
                        end else begin
                            state <= IDLE;
                        end
                    end
                end
                DATA: begin
                    if (scl_fall) sda_oe <= 1'b0; // Release SDA for master to drive data
                    if (scl_rise) begin
                        shift_reg <= {shift_reg[6:0], sda_sync[1]};
                        if (bit_cnt == 0) state <= ACK2;
                        else bit_cnt <= bit_cnt - 1;
                    end
                end
                ACK2: begin
                    if (scl_fall) sda_oe <= 1'b1; // ACK the received byte
                    if (scl_rise) begin
                        if (byte_sel == 1'b0) begin
                            // First byte received: Latch to Upper 8 bits (e.g., N-Divider)
                            div_ctrl[15:8] <= shift_reg;
                            byte_sel       <= 1'b1;
                            bit_cnt        <= 7;
                            state          <= DATA; // Loop back to DATA for Byte 2!
                        end else begin
                            // Second byte received: Latch to Lower 8 bits (e.g., R-Divider)
                            div_ctrl[7:0]  <= shift_reg;
                            state          <= IDLE; // 16-bit transaction complete
                        end
                    end
                end
                default: state <= IDLE;
            endcase
        end
    end
endmodule