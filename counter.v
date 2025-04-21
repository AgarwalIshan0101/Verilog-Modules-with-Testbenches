// 4 bit up counter
module counter (
    input wire clk,
    input wire reset,
    output reg [3:0] out
);

always @(posedge clk or posedge reset) 
    begin
        if (reset)
            out <= 4'b0000;
        else
            out <= out + 1;
    end

endmodule