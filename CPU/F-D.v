`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:48:13 06/26/2019 
// Design Name: 
// Module Name:    F-D 
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
module F-D(
    input [31:0] IMcode@F,
    input [31:0] PC@F,
    input [31:0] PC4@F,
    input [31:0] PC8@F,
	 input CLK,
	 input Reset,
    output [31:0] IMcode@D,
    output [31:0] PC@D,
    output [31:0] PC4@D,
    output [31:0] PC8@D
    );
		reg [31:0] IMcodeReg;
		reg [31:0] PCREG;
		reg [31:0] PC4REG;
		reg [31:0] PC8REG;
		initial begin
			IMcodeReg = 0;
			PCREG = 0;
			PC4REG = 0;
			PC8REG = 0;
		end
		assign IMcode@D = IMcodeReg;
		assign PC@D = PCREG;
		assign PC4@D = PC4REG;
		assign PC8@D = PC8REG;
		always @(posedge CLK)begin
			if(Reset==1) begin
				IMcodeReg = 0;
				PCREG = 0;
				PC4REG = 0;
				PC8REG = 0;
			end
			else begin
				IMcodeReg = IMcode@F;
				PCREG = PC@F;
				PC4REG = PC4@F;
				PC8REG = PC4@F;
			end
		end

endmodule
