module day6_tb();
  reg clk;
  reg reset;
  reg x_i;
  wire [3:0]sr_o;
  day6 d6(.*);
  initial 
    begin
      clk=0;
      forever #5 clk=~clk;
    end
  initial
    begin
      reset=1'b0;
      #5;
      reset=1'b1;
      #5;
      x_i=1;
      #5;
      x_i=0;
      #5;
       x_i=1;
      #5;
      x_i=0;
      #5;
      $finish();
    end
  
endmodule



