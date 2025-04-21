`include "mux_16_1.v"

module mux_16_1_tb;
    reg [15:0] in;
    reg [3:0] sel;
    wire out;

    mux_16_1 DUT(.in(in),.sel(sel),.out(out));

    initial 
        begin 
        #5 in=16'h3f0a; sel=4'h0;
        #5 sel=4'h1;
        #5 sel= 4'h6;
        #5 sel=4'hc; 
        $finish; 
        end

    initial
        begin
            $monitor($time,"in=%h,sel=%h,out=%b", in,sel,out);

        end
endmodule
