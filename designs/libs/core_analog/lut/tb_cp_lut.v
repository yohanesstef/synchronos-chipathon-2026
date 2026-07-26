`timescale 1ns / 1ps

module tb_cp_lut;
reg  [7:0] n_div;
wire [3:0] cp_tune;

cp_lut uut (
    .n_div(n_div),
    .cp_tune(cp_tune)
);

integer i;
initial begin
    $dumpfile("lut.vcd");
    $dumpvars(0, tb_cp_lut);

    $display("---------------------------------------------");
    $display(" N_DIV      CP_TUNE");
    $display("---------------------------------------------");

    // Sweep every possible input
    for(i=0;i<256;i=i+1) begin
        n_div = i;
        #10;
        $display("%3d (%8b) -> %2d (%4b)",
                 n_div,
                 n_div,
                 cp_tune,
                 cp_tune);
    end

    $display("---------------------------------------------");
    $finish;
end
endmodule
