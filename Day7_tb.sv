module day7_tb ();

 reg clk;
  reg reset;
  wire lfsr_o;
  day7 d7(.*);
  initial
    begin 
      clk=0;
      forever #5 clk=~clk;
    end
  initial
    begin
      reset=0;
      #3;
      reset=1;
      #5;
      reset=0;
      #30;
      $finish();
      
    end
  

endmodule
