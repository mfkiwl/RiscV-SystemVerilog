// Code your design here
module Pc(
	input logic rst, clk,
  output logic [31:0] insOut, 
  output logic [11:0] currentPc,
  output logic [31:0] pc = 32'h00000000
);
  
  reg [31:0] insReg[64000];
  assign insReg[0] = 32'h4356_ae86;
  assign insReg[20] = 32'h1234_3123;

  
  always @(posedge clk) begin
    if(!rst) begin
      pc = pc + 4;
      currentPc = pc[2+:13];
      insOut = insReg[currentPc];
    end  
    else begin
      currentPc = 12'h000;
      insOut = insReg[currentPc];
    end
  end
endmodule
  