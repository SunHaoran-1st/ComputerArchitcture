`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:40:42 07/03/2019 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [31:0] SrcA,
    input [31:0] SrcB,
    input [2:0] ALUOp,
    output reg [31:0] ALUOUT
    );
	 initial begin
		 ALUOUT=0;
	 end
	 always@*begin
	    if(ALUOp==0)begin
		    ALUOUT = SrcA + SrcB;
		 end
		 if(ALUOp==1)begin
		    ALUOUT = SrcA - SrcB;
		 end
		 if(ALUOp==2)begin
		    ALUOUT = SrcA | SrcB;
		 end
	 end


endmodule
