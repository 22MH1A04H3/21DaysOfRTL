module day9_tb ();
   parameter VEC_W = 4;
  reg[VEC_W-1:0] bin_i;
  wire[VEC_W-1:0] gray_o;
  day9 d9(.*);
  initial
    begin
      
      bin_i=10;
      #5;
      bin_i=11;
      #5;
      bin_i=00;
      #5;
      bin_i=01;
      #5;
      $finish();
    end
 

endmodule
