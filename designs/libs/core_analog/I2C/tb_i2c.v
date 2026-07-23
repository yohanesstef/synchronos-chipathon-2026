`timescale 1ns / 1ps

module tb_i2c;
    reg clk;
    reg rstn;
    reg scl;
    wire sda;
    reg sda_master_out;
    wire sda_oe;
    wire [15:0] div_ctrl; // Upgraded to 16-bit bus

    // Simulate the external Pull-up Resistor required for I2C
    pullup(sda);
    
    // Open-drain drivers on the shared bidirectional bus
    assign sda = sda_master_out ? 1'b0 : 1'bz; // Master driving the bus
    assign sda = sda_oe         ? 1'b0 : 1'bz; // Target driving the bus (emulating pad cell)

    i2c_target uut (
        .clk(clk), .rstn(rstn), .scl(scl), .sda_in(sda), .sda_oe(sda_oe), .div_ctrl(div_ctrl)
    );

    // 10 MHz internal system clock
    always #50 clk = ~clk;

    task i2c_start;
        begin
            sda_master_out = 1; #1250; scl = 0; #1250;
        end
    endtask

    task i2c_stop;
        begin
            sda_master_out = 1; #1250; scl = 1; #1250; sda_master_out = 0; #1250;
        end
    endtask

    task send_byte(input [7:0] data);
        integer i;
        begin
            for (i = 7; i >= 0; i = i - 1) begin
                sda_master_out = ~data[i]; // 1=pull low, 0=release (high-z)
                #1250; scl = 1; #2500; scl = 0; #1250;
            end
            // Wait for Target ACK
            sda_master_out = 0; // Release SDA
            #1250; scl = 1; #2500; scl = 0; #1250;
        end
    endtask

    initial begin
        $dumpfile("i2c_waveform.vcd");
        $dumpvars(0, tb_i2c);
        
        clk = 0; rstn = 0; scl = 1; sda_master_out = 0;
        #200 rstn = 1; #500;
        
        // Transaction: Address 0x50(W) -> Byte 1 (0xAA) -> Byte 2 (0x33)
        i2c_start();
        $display("Sending Address 0x50 (Write)...");
        send_byte(8'hA0); 
        
        $display("Sending Byte 1 (Upper 8 bits / N-Divider): 0xAA...");
        send_byte(8'hAA);
        
        $display("Sending Byte 2 (Lower 8 bits / R-Divider): 0x33...");
        send_byte(8'h33);
        
        i2c_stop();

        #5000;
        $display("Final Latched 16-bit Divider Control: 0x%h", div_ctrl);
        $display("  -> N-Divider (Upper Byte): 0x%h", div_ctrl[15:8]);
        $display("  -> R-Divider (Lower Byte): 0x%h", div_ctrl[7:0]);
        $finish;
    end
endmodule