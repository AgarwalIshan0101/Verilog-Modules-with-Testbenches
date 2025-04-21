`include "half_adder.v"

module half_adder_tb;
    reg a,c;
    wire sum,carry;

    half_adder DUT(a,c,sum,carry);

    initial begin
    $dumpfile ("half_adder.vcd");
    $dumpvars (0,half_adder_tb);
    $monitor($time, " a = %b, c = %b, sum = %b, carry = %b", a, c, sum, carry);

    a = 0; c = 0;
    #10
    a = 0; c = 1;
    #10
    a = 1; c = 0;
    #10
    a = 1; c = 1;
    #10
    $finish;
    end
    

endmodule