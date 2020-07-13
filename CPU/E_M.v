`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:06:32 07/03/2019 
// Design Name: 
// Module Name:    E_M 
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
module E_M(
    input [31:0] IMcode_E,
    input [31:0] PC_E,
    input [31:0] AO_E,
    input [31:0] RT_E,
	 input CLK,
	 input Reset,
    output reg [31:0] IMcode_M,
    output reg [31:0] PC_M,
    output reg [31:0] AO_M,
    output reg [31:0] RT_M
    );
	 initial begin
		 IMcode_M = 0;
		 PC_M = 32'h3000;
		 AO_M = 0;
		 RT_M = 0;
	 end
	 
	 always @(posedge CLK)begin
		 if(Reset==1)begin
			 IMcode_M = 0;
			 PC_M = 32'h3000;
			 AO_M = 0;
			 RT_M = 0;
		 end
		 else begin
			 IMcode_M = IMcode_E;
			 PC_M = PC_E;
			 AO_M = AO_E;
			 RT_M = RT_E;
		 end
	 end


endmodule
