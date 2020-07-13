`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:28:03 07/03/2019 
// Design Name: 
// Module Name:    DM 
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
module DM(
	 input [31:0] AO_E,
    input [31:0] RT_E,
	 input [31:0] PC_E,
    input CLK,
    input Reset,
    input MemWrite,
    output [31:0] DM_OUT
    );
	 integer i;
	 wire [31:0]addr;
	 assign addr={20'b0,AO_E[11:2],2'b0};
	 reg [31:0] dm_reg[0:1023];
	 initial begin
	    for(i=0;i<1024;i=i+1) dm_reg[i]=0;
	 end
	 assign DM_OUT=dm_reg[AO_E[11:2]];
	 
	 always@(posedge CLK)begin
	    if(Reset==1)begin
		    for(i=0;i<32;i=i+1)begin
			    dm_reg[i]=0;
			 end
		 end
		 else if(MemWrite==1)begin
		    dm_reg[AO_E[11:2]]=RT_E;
			 $display("%d@%h: *%h <= %h",$time, PC_E, addr, RT_E);
		 end
	 end


endmodule