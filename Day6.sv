// Simple shift register
module day6(
  input     wire        clk,
  input     wire        reset,
  input     wire        x_i,      // Serial input

  output    reg [3:0]   sr_o
);


  always@( posedge clk or posedge reset)
    begin
      if(reset)  
      sr_o<=4'b0000;
      else
        sr_o<={x_i,sr_o[2:0]};
      
    end

endmodule
