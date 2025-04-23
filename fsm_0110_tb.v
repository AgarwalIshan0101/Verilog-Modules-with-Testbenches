`include "fsm_0110.v"
module fsmtest;
    reg x, clk, reset;
    wire z;
    fsm_0110 DUT( x, clk, reset, z);
    initial 
        begin 
            clk=0;
            forever #5 clk=~clk;
        end
    initial 
        begin
            reset = 1;
            x = 0;
            #10 reset = 0; 
        end

    initial 
        begin
            $monitor($time," x=%b, z=%b",x,z);
        end
    initial
        begin
        #12 x=0 ; #10 x= 0 ; #10 x=1; #10 x=1;
        #12 x=0 ; #10 x= 1 ; #10 x=1; #10 x=0;
        #12 x=1 ; #10 x= 1 ; #10 x=0; #10 x=0;
        #12 x=0 ; #10 x= 0 ; #10 x=1; #10 x=1;
        #10 $finish;
    end
endmodule



