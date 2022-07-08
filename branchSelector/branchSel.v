// Code your design here
// Code your design here
module branch(
  input reg [31:0] rs1,
  input reg [31:0] rs2,
  output logic out, 
  input logic [2:0] fun3
);
  
always @(*) begin
  if(fun3 == 3'b000 && ($signed(rs1)== $signed(rs2))) begin
    assign out = 1'b1;
  end
  else if(fun3 == 3'b001 && ($signed(rs1)!=$signed(rs2))) begin
    assign out = 1'b1;
  end
  else if(fun3 == 3'b100 && ($signed(rs1) < $signed(rs2))) begin
    assign out = 1'b1;
  end
  else if(fun3 == 3'b101 && ($signed(rs1) > $signed(rs2) || $signed(rs1) == $signed(rs2))) begin
    assign out = 1'b1;
  end
  else if(fun3 == 3'b110 && (rs1 < rs2)) begin
    //branch less than unsigned
    assign out = 1'b1;
  end
  else if((fun3 == 3'b111) && (rs1 > rs2 || rs1 == rs2)) begin
    //branch greater or equal to unsigned
    assign out = 1'b1;
  end
  else if (fun3 == 3'b010 || fun3 == 3'b011) assign out = 1'bx;
  else assign out = 1'b0;
end    

endmodule