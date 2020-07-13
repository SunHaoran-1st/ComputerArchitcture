`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:15:31 07/02/2019 
// Design Name: 
// Module Name:    D_E 
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
module D_E(
	 input [31:0] PC_D,
	 input [31:0] IMcode_D,
	 input [31:0] RF_RD1,
	 input [31:0] RF_RD2,
	 input [31:0] ext_imm,
	 input Stall,
	 input CLK,
	 input Reset,
	 output reg [31:0] PC_E,
	 output reg [31:0] IMcode_E,
	 output reg [31:0] RS_E,
	 output reg [31:0] RT_E,
	 output reg [31:0] EXT_E
    );
	 initial begin
			IMcode_E = 0;
			PC_E = 32'h3000;
			RS_E = 0;
			RT_E = 0;
			EXT_E = 0;
	 end
	 always @(posedge CLK)begin
			if(Reset==1||Stall==1) begin
				IMcode_E = 0;
				PC_E = 32'h3000;
				RS_E = 0;
				RT_E = 0;
				EXT_E = 0;
			end
			else begin
				IMcode_E = IMcode_D;
				PC_E = PC_D;
				RS_E = RF_RD1;
				RT_E = RF_RD2;
				EXT_E = ext_imm;
			end
	 end


endmodule
