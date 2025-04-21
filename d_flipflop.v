// d flip flop posedge synchronous reset 
module d_flipflop (d, clk, reset, q);
input d, clk, reset;
output reg q;
always @ (posedge clk or posedge reset) 
    begin
        if (reset) 
            begin
                q <= 0;
            end
        else 
            begin
                q <= d ;
            end
    end

endmodule 