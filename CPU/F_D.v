`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:08:00 06/26/2019 
// Design Name: 
// Module Name:    F_D 
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
module F_D(
    input [31:0] IMcode_F,
    input [31:0] PC_F,
	 input CLK,
	 input Reset,
	 input Stall,
    output reg [31:0] IMcode_D,
    output reg [31:0] PC_D
    );
		initial begin
			IMcode_D = 0;
			PC_D = 32'h3000;			
		end
		
		always @(posedge CLK)begin
			if(Reset==1) begin
				IMcode_D = 0;
				PC_D = 32'h3000;
			end
			else if(Stall!=1)begin
				IMcode_D = IMcode_F;
				PC_D = PC_F;
			end
		end

endmodule
