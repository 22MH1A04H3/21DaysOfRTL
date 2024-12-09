// LFSR
module day7 (
  input     wire      clk,
  input     wire      reset,

  output    reg[3:0] lfsr_o
);
  always@(posedge clk or posedge reset)
  begin
    if(reset)
      lfsr_o<=4'b0001;
    else
      lfsr_o<={lfsr_o[1]^lfsr_o[3],lfsr_o[2:0]};
  end
      endmodule
