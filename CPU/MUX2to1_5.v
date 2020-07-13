`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:55:33 07/04/2019 
// Design Name: 
// Module Name:    MUX2to1_5 
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
module MUX3to1_5(
	 input [4:0] A,
	 input [4:0] B,
	 input [4:0] C,
	 input [1:0] MUX_OP,
	 output reg [4:0] MUX_OUT
    );
	 initial begin
		 MUX_OUT = 0;
	 end
	 always@*begin
		 if(MUX_OP==0)begin
			 MUX_OUT = A;
		 end
		 if(MUX_OP==1)begin
			 MUX_OUT = B;
		 end
		 if(MUX_OP==2)begin
			 MUX_OUT = C;
		 end
	 end
endmodule
