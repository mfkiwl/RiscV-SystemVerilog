// Code your testbench here
// or browse Examples
// `timescale 1ns/1ns
// `include "immGen.v"
module immGen_tb;
initial begin
 	$dumpfile("dump.vcd");
	$dumpvars;
end 

  reg [31:0] Pc_tb;
  reg [31:0] Ins_tb;
  reg [31:0] I_imm_tb, S_imm_tb, Sb_imm_tb, Uj_imm_tb, U_imm_tb;
  logic rst_tb;


immGen immGen1(
    .Pc(Pc_tb),
    .Ins(Ins_tb),
    .I_imm(I_imm_tb),
    .S_imm(S_imm_tb),
    .Sb_imm(Sb_imm_tb),
    .Uj_imm(Uj_imm_tb),
  .U_imm(U_imm_tb),
  .rst(rst_tb)
);


initial begin
  	rst_tb = 1;
  	Pc_tb = 32'h00000001;  	
  	Ins_tb = 32'h00000000;
 	#5
  	rst_tb = 0;
  	#5
    Ins_tb = 32'h6cf0f560;
   	#5
    Ins_tb = 32'hecf0f560;
    #40
    $finish;
    end
endmodule