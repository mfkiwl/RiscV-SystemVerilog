// `timescale 1ns/1ns
// `include "controlDecode.v"
module Pc_tb;
initial begin
 	$dumpfile("dump.vcd");
	$dumpvars;
end 

logic rst_tb, clk_tb;
logic [31:0] insOut_tb; 
logic [11:0] currentPc_tb;
logic [31:0] pc_tb;

Pc Pc1(
  .rst(rst_tb),
  .clk(clk_tb),
  .insOut(insOut_tb),
  .currentPc(currentPc_tb),
  .pc(pc_tb)
);


initial begin
	rst_tb = 1;
  	clk_tb = 1;
  	#5
  	rst_tb = 0;
    #400
    $finish;
    end
	always #5 clk_tb = ~clk_tb;
endmodule