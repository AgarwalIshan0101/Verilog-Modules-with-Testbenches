/*module sr_latch( s,r,q,qbar);
    input s,r;
    output q,qbar;
    assign qbar= ~( r & q);
    assign q= ~ ( s & qbar);
endmodule
*/



module sr_latch(input s, input r, output reg q, output qbar);
    assign qbar = ~q;

    always @ (s or r)
    begin
        if (s == 1 && r == 0)
            q = 1;
        else if (s == 0 && r == 1)
            q = 0;
        else if (s == 0 && r == 0)
            q = q; 
        else
            q = 1'bx;
    end
endmodule
