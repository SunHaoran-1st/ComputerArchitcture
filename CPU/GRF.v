`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:00:23 07/02/2019 
// Design Name: 
// Module Name:    GRF 
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
module GRF(
    input [25:21] A1,
    input [20:16] A2,
    input [4:0] A3,
    input [31:0] WD_RF,
	 input [31:0] PC,
	 input CLK,
	 input Reset,
	 input RegWrite,
    output [31:0] RD1,
    output [31:0] RD2
    );
	 integer i;
	 reg [31:0] grf_reg[0:31];
	 initial begin
	    for(i=0;i<32;i=i+1) grf_reg[i]=0;
	 end
	 assign RD1=grf_reg[A1];
	 assign RD2=grf_reg[A2];
	 always@(posedge CLK)begin
	    if(Reset==1)begin
		    for(i=1;i<32;i=i+1)begin
			    grf_reg[i]=0;
			 end
		 end
		 else if(RegWrite==1&&A3!=0)begin
		    grf_reg[A3]=WD_RF;
			 $display("%d@%h: $%d <= %h",$time, PC, A3,WD_RF);
		 end
	 end


endmodule
