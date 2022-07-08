// `timescale 1ns/1ns
// `include "controlDecode.v"
module branch_tb;
initial begin
 	$dumpfile("dump.vcd");
	$dumpvars;
end 

  reg [31:0] rs1_tb;
  reg [31:0] rs2_tb;
  logic out_tb;
  logic [2:0] fun3_tb;

branch branch1(
  .rs1(rs1_tb),
  .rs2(rs2_tb),
  .out(out_tb),
  .fun3(fun3_tb)
);


initial begin
  	fun3_tb = 3'b000;
  	rs1_tb = 32'h80000004;
  	rs2_tb = 32'h00000006;
    #5
 	fun3_tb = 3'b001;
  	#5
  	fun3_tb = 3'b010;
    #5
    fun3_tb = 3'b011;
  	#5
  	fun3_tb = 3'b100;
 	#5
  	fun3_tb = 3'b101;
  	#5
  	fun3_tb = 3'b110;
  	#5
  	fun3_tb = 3'b111;
    #40
    $finish;
    end
endmodule