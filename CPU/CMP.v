`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:11:45 07/02/2019 
// Design Name: 
// Module Name:    CMP 
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
module CMP(
    input [31:0] RF_RD1,
    input [31:0] RF_RD2,
    output IF_Equal,
	 output IF_Bgez
    );
	 assign IF_Equal=(RF_RD1==RF_RD2);
	 assign IF_Bgez=($signed(RF_RD1)>$signed(0)||$signed(RF_RD1)==$signed(0));
	 
endmodule
