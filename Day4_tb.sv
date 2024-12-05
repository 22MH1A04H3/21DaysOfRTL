// Simple ALU TB

module day4_tb ();

  reg [7:0]a_i;
  reg [7:0]b_i;
  reg [2:0]op_i;
  wire [7:0]alu_o;
  day4 d4(.*);
  initial 
    begin
      a_i=00001010;
      b_i=00010100;
      op_i=000;
      #5;
      a_i=00001010;
      b_i=00010100;
      op_i=001;
      #5;
      a_i=00001010;
      b_i=00010100;
      op_i=010;
      #5;
      a_i=00001010;
      b_i=00010100;
      op_i=011;
      #5;
      a_i=00001010;
      b_i=00010100;
      op_i=100;
      a_i=00001010;
      b_i=00010100;
      op_i=101;
      #5;
      a_i=00001010;
      b_i=00010100;
      op_i=110;
      #5;
      a_i=00001010;
      b_i=00010100;
      op_i=111;
      
      $finish();
    end
endmodule