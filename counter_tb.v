`include "counter.v"
module counter_tb;  
    reg clk;
    reg reset;
    wire [3:0] out;
    counter uut (.clk(clk), .reset(reset),.out(out));

    initial begin
        clk = 0;
        reset = 1;
        #100;
        reset = 0;
    end
    always #5 clk = ~clk;
    initial
        begin
            $monitor($time,"reset=%h,out=%h",reset,out);
        end
    
endmodule