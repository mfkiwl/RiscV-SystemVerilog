// Code your design here
module ram(
  input logic [11:0] address,
  output logic [31:0] dataOut,
  input logic [31:0] dataIn,
  input logic clk, sel, str, ld, clr
);
  
  reg [31:0] ram [64000];
  
  //save data in ram for testing
  assign ram[0] = 32'h0000_0008;
  assign ram[10] = 32'h12341234;
  assign ram[20] = 32'h0000_0003;
  assign ram[30] = 32'h0000_0004;
  
  always @(posedge clk) begin
    if(!clr) begin
      if(sel) begin
          if(ld) begin
          assign dataOut = ram[address];
        end
        else if(str) begin
          ram[address] = {dataIn};
        end
      end
    end  
    else begin
      //set outputs to zero
      assign dataOut = 32'h0000_0000;
    end
  end
endmodule