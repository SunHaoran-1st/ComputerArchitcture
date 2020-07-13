`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:42:03 06/26/2019 
// Design Name: 
// Module Name:    PC 
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
module PC(
    input [31:0] NPC,
	 input CLK,
	 input Reset,
	 input Stall,
	 output [11:2] IMaddr,
    output [31:0] PC
    );
	 reg [31:0]PCREG;
	 initial begin
	    PCREG=32'h3000;
	 end
	 assign PC=PCREG;
	 assign IMaddr=PCREG[11:2];

	 always @(posedge CLK)begin
	    if(Reset==1)begin
		    PCREG=32'h3000;
		 end
		 else if(Stall!=1)begin
		    PCREG=NPC;
		 end
	 end

endmodule