module day10_tb ();
reg clk;
  reg reset;
  reg  [3:0]load_i;
  reg [3:0]load_val_i;
  wire [3:0]count_o;
  day10 d10(.*);
  initial
    begin 
      clk=0;
      forever #5 clk=~clk;
    end
  initial begin
    clk=0;
  reset=0;
    load_i=4'd5;
    load_val_i=4'd9;
    #20;
     clk=0;
  reset=1;
    load_i=4'd4;
    load_val_i=4'd7;
    #20;
     clk=0;
  reset=0;
    load_i=4'd1;
    load_val_i=4'd9;
    #60;
    $finish();
    
   
    
    
  end


endmodule
