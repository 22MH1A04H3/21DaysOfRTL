// Simple TB

module day5_tb ();
reg clk;
  reg reset;
  wire [7:0]cnt_o;
  day5 d5(.*);
  always 
    begin 
      clk=1'b0;
      #5;
      clk=1'b1;
      #5;
    end
  initial 
    begin
      reset=1'b1;
      @(posedge clk);
      @(posedge clk);
      reset=1'b0;
      for(int i=0;i<125;i++)
        @(posedge clk);
      $finish();
  
    end  
endmodule