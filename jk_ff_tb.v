`include "jk_ff.v"
module jk_ff_tb;
  reg j,k,clk; wire q_bar,q;
  jk_ff DUT(clk, j,k ,q,q_bar);
  
  initial 
      begin 
          clk=0;
          forever #5 clk = ~clk ;
      end

  initial
    begin
      j=0;
      k=0;
    end

  initial
    begin
      #10 ;
      j=1;k=1;
      #10 ;
      j=1;k=0;
      #10 ;
      j=1;k=1;
      #10 ;
      j=0;k=1;
      #10 ;
      j=0;k=0;
      #10 ;
      j=0;k=0;
      #10 ;
      j=0;k=0;
      #12 ;
      j=1;k=0;
      #10 ;
      j=0;k=0;
      #10 ;
      j=0;k=0;
      $finish;
    end
  initial
    begin
      $monitor($time,"j=%b,k=%b,q=%b,q_bar=%b",j,k,q,q_bar);
    end
endmodule

  
    