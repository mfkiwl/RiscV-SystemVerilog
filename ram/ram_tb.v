// Code your testbench here
// or browse Examples
module ram_tb;
  initial begin
    $dumpvars(0);
  end
  
  logic [11:0] address_tb;
  logic [31:0] dataOut_tb;
  logic [31:0] dataIn_tb;
  logic clk_tb, sel_tb, str_tb, ld_tb, clr_tb;
  
  ram ram1
  (
    .address(address_tb),
    .dataOut(dataOut_tb),
    .dataIn(dataIn_tb),
    .clk(clk_tb),
    .sel(sel_tb),
    .str(str_tb),
    .ld(ld_tb),
    .clr(clr_tb)
  );
  
  initial begin
    sel_tb = 1;
    clk_tb = 1;
    clr_tb = 0;
    address_tb = 12'h00a;
    dataIn_tb = 32'h0000_1234;
    str_tb = 1;
    ld_tb = 0;
    #5
    str_tb = 0;
    ld_tb = 1;
    address_tb = 12'h00a;
    #15
    clr_tb = 1;
    #40
    $finish;
  end
  
  always #5 clk_tb = ~clk_tb;
endmodule
     