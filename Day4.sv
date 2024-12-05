// A simple ALU

module day4 (
  input     logic [7:0]   a_i,
  input     logic [7:0]   b_i,
  input     logic [2:0]   op_i,

  output    logic [7:0]   alu_o
);
  logic [7:0] r ;
  always @(*)
    begin
  case (op_i)
    3'b000: r=a_i + b_i;
    3'b001: r=a_i - b_i;
    3'b010: r=a_i << b_i[2:0];
    3'b011: r=a_i >> b_i[2:0];
    3'b100: r=a_i & b_i;
    3'b101: r=a_i | b_i;
    3'b110:r=a_i ^ b_i;
    3'b111:r=(a_i==b_i)? 8'b1:8'b0;
    default: r=8'b0;
  endcase
  
  end
     assign alu_o=r;
endmodule
