// Simple edge detector TB

module day3_tb ();
  reg clk;
  reg reset;
  reg a_i;
  wire rising_edge_o;
  wire falling_edge_o;
  day3 d3(.*);
  

  initial 
    begin
      clk=0;
      forever #2 clk=(~clk);
    end
  initial
    begin
      a_i=0;
      reset=0;
      #10;
       a_i=0;
      reset=1;
      #10;
       a_i=1;
      reset=0;
      #10;
       a_i=1;
      reset=1;
      #10;
      $finish;
    end
endmodule
