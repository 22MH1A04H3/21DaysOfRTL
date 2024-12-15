
module day10 (
  input     wire          clk,
  input     wire          reset,
  input     wire[3:0]          load_i,
  input     wire[3:0]     load_val_i,

  output    reg[3:0]     count_o
);
  always@( posedge clk or posedge reset)
   begin
     if(reset)
       count_o <= load_i;
     else if(load_i==load_val_i)
       count_o <=load_i;
     else
       count_o <=load_i+1;
   end
endmodule
