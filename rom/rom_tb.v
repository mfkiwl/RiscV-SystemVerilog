// Code your testbench here
// or browse Examples
module rom_tb;
  initial begin
    $dumpvars(0);
  end
  
  logic [11:0] address_tb;
  logic [31:0] data_tb;
logic clk_tb;
  
  rom UUT
  (
    .address(address_tb),
    .data(data_tb),
    .clk(clk_tb)
  );
  
  initial begin
    clk_tb = 1;
    address_tb = 12'h000;
    #5
    address_tb = 12'h00a;
    #5
    address_tb = 12'h002;
    #5
    address_tb = 12'h003;
    #400
    $finish;
  end
  
  always #2 clk_tb = ~clk_tb;
endmodule
     