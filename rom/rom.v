// Code your design here
module rom(
  input logic [11:0] address,
  output logic [31:0] data,
  input logic clk
);
  
  reg [31:0] rom [64000];
  
  //save data in rom
  assign rom[0] = 32'h0000_0008;
  assign rom[10] = 32'h12341234;
  assign rom[20] = 32'h0000_0003;
  assign rom[30] = 32'h0000_0004;
  
  always @(posedge clk) begin
    assign data = rom[address];
  end
endmodule