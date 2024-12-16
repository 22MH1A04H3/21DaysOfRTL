// Parallel to serial with valid and empty

module day11 (
  input     wire      clk,
  input     wire      reset,

  output    wire      empty_o,
  input     wire[3:0] parallel_i,
  
  output    wire      serial_o,
  output    wire      valid_o
);
  reg [3:0] shift_reg;
  reg [2:0]counter;
  reg valid;
  always@(posedge clk or posedge reset)
    begin
      if(reset)
        begin
          shift_reg <=4'b0;
          counter<=3'b0;
          valid<=1'b0;
        end
      else if(counter==0)
        begin
          shift_reg<=parallel_i;
          counter<=3'b100;
          valid<=1'b1;
          
        end
      else
        begin
          shift_reg<={1'b0,shift_reg[3:1]};
       counter<=counter-1;
          
        end
    end
  assign serial_o=shift_reg[0];
  assign empty_o=(counter==0);
  assign valid_o=valid;
  
  


endmodule
