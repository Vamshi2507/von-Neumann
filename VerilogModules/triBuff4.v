`timescale 1ns/1ps
module triBuff4(input [3:0] data, input enable, output [3:0] dataOut);
    assign dataOut = enable ? data : 4'bzzzz;
endmodule
// to avoid taking more current from a signal source than it can comfortably supply. if dataOut=enable, the program continues and LED glows. If not there are no read and write enable privilleges given
