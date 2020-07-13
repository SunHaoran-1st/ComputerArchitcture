`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:46:44 07/02/2019 
// Design Name: 
// Module Name:    IM 
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
module IM(
    input [9:0] IM_in,
    output [31:0] IM_out
    );
	 reg[31:0] im_reg[0:1023];
	 initial begin
		 $readmemh("code.txt",im_reg);
	 end
	 assign IM_out = im_reg[IM_in];
endmodule
