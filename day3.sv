 // An edge detector

module day3 (
  input     wire    clk,
  input     wire    reset,

  input     wire    a_i,

  output    reg    rising_edge_o,
  output    reg   falling_edge_o
);
reg pv;
  always@(posedge clk or posedge reset)
  begin
    if(reset)
      begin
      pv <=0;
      rising_edge_o <= 0;
    falling_edge_o <= 0;
      end
    else
      begin
      rising_edge_o <= (!pv && a_i);
    falling_edge_o <= (pv && !a_i);
    pv <= a_i;
      end
    
  end
  
endmodule
