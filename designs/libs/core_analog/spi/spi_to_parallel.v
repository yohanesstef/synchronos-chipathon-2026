`timescale 1ns / 1ps

module spi_to_parallel #(
    parameter WIDTH = 8 // Default 8-bit divider control
)(
    input wire rstn,      // Active-low asynchronous reset
    input wire sclk,      // Serial Clock from microcontroller
    input wire sdin,      // Serial Data In
    input wire latch,     // Pulses high to update the parallel output
    output reg [WIDTH-1:0] div_ctrl // Parallel bus to the clock divider
);

    reg [WIDTH-1:0] shift_reg;

    // Stage 1: Shift Register (Clocks in serial data bit-by-bit)
    always @(posedge sclk or negedge rstn) begin
        if (!rstn) begin
            shift_reg <= {WIDTH{1'b0}};
        end else begin
            // Shift left, pulling in the new bit at the Least Significant Bit (LSB)
            shift_reg <= {shift_reg[WIDTH-2:0], sdin};
        end
    end

    // Stage 2: Shadow Latch (Updates the divider only when latch is pulsed)
    always @(posedge latch or negedge rstn) begin
        if (!rstn) begin
            div_ctrl <= {WIDTH{1'b0}};
        end else begin
            div_ctrl <= shift_reg;
        end
    end

endmodule