// d flip flop posedge synchronous reset 

`include "d_flipflop.v"

module d_flipflop_tb;
    reg d, clk, reset;
    wire q;
    d_flipflop DUT (d, clk, reset, q);

    initial 
        begin 
            clk=0;
            forever #5 clk=~clk;
        end
    initial begin 
        reset=1;
        d = 0;
        #100;
        reset=0;
        d = 1;
        #100;
        d = 0;
        #100;
        d = 1;
        $finish;
        
    end 
    initial
        begin
            $monitor("d=%b,q=%b,reset=%b",d,q,reset);
        end
endmodule


