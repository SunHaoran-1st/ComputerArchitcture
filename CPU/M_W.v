`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:55:21 07/03/2019 
// Design Name: 
// Module Name:    M_W 
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
module M_W(
    input [31:0] IMcode_M,
    input [31:0] PC_M,
    input [31:0] AO_M,
    input [31:0] DO_M,
	 input CLK,
	 input Reset,
    output reg [31:0] IMcode_W,
    output reg [31:0] PC_W,
    output reg [31:0] AO_W,
    output reg [31:0] DO_W
    );
	 initial begin
		 IMcode_W = 0;
		 PC_W = 32'h3000;
		 AO_W = 0;
		 DO_W = 0;
	 end
	 always @(posedge CLK)begin
		 if(Reset==1)begin
			 IMcode_W = 0;
			 PC_W = 32'h3000;
			 AO_W = 0;
			 DO_W = 0;
		 end
		 else begin
			 IMcode_W = IMcode_M;
			 PC_W = PC_M;
			 AO_W = AO_M;
			 DO_W = DO_M;
		 end
	 end


endmodule
