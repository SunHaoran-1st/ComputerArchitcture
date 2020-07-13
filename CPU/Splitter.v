`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:25:19 07/02/2019 
// Design Name: 
// Module Name:    Splitter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Splitter(
	 input [31:0] A,
    output [31:26] op,
    output [25:21] rs,
    output [20:16] rt,
    output [15:11] rd,
    output [15:0] immediate,
    output [5:0] funct
    );
	 assign {op,rs,rt,immediate}=A;
	 assign rd=A[15:11];
	 assign funct=A[5:0];

endmodule
