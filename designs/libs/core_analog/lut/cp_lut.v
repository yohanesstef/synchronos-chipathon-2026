`timescale 1ns / 1ps

module cp_lut (
    input  wire [7:0] n_div,      // 8-bit N-divider input
    output reg  [3:0] cp_tune     // 4-bit Charge Pump control
);

always @(*) begin
    if      (n_div >= 8'd171) cp_tune = 4'd0;
    else if (n_div >= 8'd103) cp_tune = 4'd1;
    else if (n_div >= 8'd74 ) cp_tune = 4'd2;
    else if (n_div >= 8'd57 ) cp_tune = 4'd3;
    else if (n_div >= 8'd47 ) cp_tune = 4'd4;
    else if (n_div >= 8'd40 ) cp_tune = 4'd5;
    else if (n_div >= 8'd35 ) cp_tune = 4'd6;
    else if (n_div >= 8'd31 ) cp_tune = 4'd7;
    else if (n_div >= 8'd27 ) cp_tune = 4'd8;
    else if (n_div >= 8'd25 ) cp_tune = 4'd9;
    else if (n_div >= 8'd23 ) cp_tune = 4'd10;
    else if (n_div >= 8'd21 ) cp_tune = 4'd11;
    else if (n_div >= 8'd19 ) cp_tune = 4'd12;
    else if (n_div == 8'd18 ) cp_tune = 4'd13;
    else if (n_div == 8'd17 ) cp_tune = 4'd14;
    else if (n_div >= 8'd1  ) cp_tune = 4'd15;
    else                      cp_tune = 4'd0;   // Invalid input (0)
end

endmodule
