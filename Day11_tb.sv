module day11_tb ();

      reg      clk;
     reg     reset;

    wire      empty_o; 
  reg[3:0] parallel_i;
  
    wire     serial_o; 
  wire      valid_o ;
  
  day11 d11(.*);
  always
    begin
      clk=1'b0;
      forever #5 clk=~clk;
      
    end
initial
  begin
    reset=1'b0;
    #5;
    parallel_i=4'b1111;
    #25;
    reset=1'b1;
    parallel_i=4'b1010;
    #30;
    $finish();
    
    
  end
  
endmodule
