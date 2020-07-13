`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:49:16 07/04/2019 
// Design Name: 
// Module Name:    MUX2to1_32 
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
module MUX2to1_32(
	 input [31:0] A,
	 input [31:0] B,
	 input MUX_OP,
	 output [31:0] MUX_OUT
    );
	 assign MUX_OUT = MUX_OP?B:A;

endmodule
