`include "sr_latch.v"

module latchtest; 
    reg s,r;
    wire qbar,q;

   sr_latch LAT(.s(s),.r(r),.q(q),.qbar(qbar));
    initial 
        begin
            $monitor($time , " s=%b, r = %b, q=%b, qbar=%b", s,r,q,qbar);
        end
    initial
        begin
            s=1'b0; r=1'b1;
            #5 s=1'b1; r=1'b1;
            #5 s=1'b1; r=1'b0;
            #5 s=1'b0; r=1'b0;
            #5 s=1'b1; r=1'b1;
            #5 s=1'b1; r=1'b0;
            $finish;
        end
endmodule


    