module half_adder (a,c,sum,carry);
    input a,c;
    output sum,carry;

    xor(sum,a,c);
    and(carry,a,c);

endmodule