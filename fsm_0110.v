// sequence detector for 0110  (overlapping)
module fsm_0110(x, clk, reset ,z);
    input x, clk , reset ;  output reg z;
    parameter s0 = 0 , s1 = 1 , s2= 2 , s3= 3;
    reg[0:1] ps, ns;
    always @(posedge clk or posedge reset)
        if (reset)
            ps<=s0;
        else 
            ps<=ns;
    always @(ps,x)
        case (ps)
            s0: begin
                    z=0;
                    ns=x ? s0:s1;
                end
            s1: begin
                    z=0;
                    ns=x ? s2 :s1;
                end
            s2: begin
                    z=0;
                    ns=x ? s3:s1;
                end
            s3: begin
                    z=x ? 0: 1 ;
                    ns=x ? s0:s1;
               end
        endcase
endmodule
