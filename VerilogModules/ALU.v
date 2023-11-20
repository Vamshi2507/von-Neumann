`timescale 1ns/1ps
module ALU(input op, input [7:0] A, input [7:0] B, output [8:0] res);
assign res[8:0] = op ? (A[7:0] - B[7:0]) : (A[7:0] + B[7:0]);
endmodule

// op ? (A[7:0] - B[7:0]) : (A[7:0] + B[7:0]): If op is true (1), it calculates the difference A - B, otherwise, it calculates the sum A + B. The [7:0] notation extracts the 8 least significant bits of A and B.
// In summary, this Verilog module is a basic ALU that performs either addition or subtraction based on the value of the op input. The result is a 9-bit vector stored in the res output.
