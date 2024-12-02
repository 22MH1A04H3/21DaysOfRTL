// DFF TB

module day2_tb ();

  reg clk;
  reg reset;
  reg d_i;
  
  wire q_norst_o;
  wire q_syncrst_o;
  wire q_asyncrst_o;
  day2 d2(.*);
  initial
    begin
    clk=0;
  forever #5 clk=(~clk);
    end
  initial
    begin
      d_i=1;
      reset=0;
      #10;
      d_i=0;
      reset=1;
      #10;
      d_i=0;
      reset=0;
      #10;
      d_i=1;
      reset=1;
      $finish;
    end
  
    
  

endmodule
