`timescale 1ns / 1ps

module tb_spi_to_parallel;
    parameter WIDTH = 8;

    reg rstn;
    reg sclk;
    reg sdin;
    reg latch;
    wire [WIDTH-1:0] div_ctrl;

    // Instantiate the Device Under Test (DUT)
    spi_to_parallel #(
        .WIDTH(WIDTH)
    ) uut (
        .rstn(rstn),
        .sclk(sclk),
        .sdin(sdin),
        .latch(latch),
        .div_ctrl(div_ctrl)
    );

    // Clock generation (100 MHz for simulation purposes)
    initial sclk = 0;
    always #5 sclk = ~sclk;

    // Task to simulate a microcontroller sending a byte serially
    task send_byte;
        input [7:0] data;
        integer i;
        begin
            for (i = 7; i >= 0; i = i - 1) begin
                sdin = data[i];
                // Change data on the falling edge so it is perfectly stable on the rising edge
                @(negedge sclk); 
            end
        end
    endtask

    initial begin
        // Setup dump file to view waveforms in GTKWave
        $dumpfile("spi_waveform.vcd");
        $dumpvars(0, tb_spi_to_parallel);

        // Initialize Inputs
        rstn = 0;
        sdin = 0;
        latch = 0;

        // Clear the reset
        #20;
        rstn = 1;
        #10;

        // TEST 1: Send configuration 0xA5 (10100101)
        $display("Sending 0xA5 to the shift register...");
        send_byte(8'hA5);

        // Pulse the latch to update the clock divider
        #10;
        latch = 1;
        #10;
        latch = 0;
        $display("Latched Data 1: 0x%h", div_ctrl);

        // TEST 2: Send new configuration 0x3C (00111100)
        #30;
        $display("Sending 0x3C to the shift register...");
        send_byte(8'h3C);

        // Pulse the latch again
        #10;
        latch = 1;
        #10;
        latch = 0;
        $display("Latched Data 2: 0x%h", div_ctrl);

        #50;
        $finish;
    end
endmodule