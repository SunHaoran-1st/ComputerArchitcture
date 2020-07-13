`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:02:15 07/02/2019 
// Design Name: 
// Module Name:    EXT 
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
module EXT(
    input [15:0] EXT_IN,
    input [1:0] OP,
    output reg [31:0] EXT_OUT
    );
	 reg [15:0] a;
	 reg [15:0] b;
	 integer i;
	 initial begin
	    EXT_OUT=0;
	    for(i=0;i<=15;i=i+1) a[i] = 0;
       for(i=0;i<=15;i=i+1) b[i] = 1;		 
	 end
	 always@*begin
	    if(OP==0)begin
		    EXT_OUT = {a,EXT_IN};
		 end
		 if(OP==1)begin
		    if(EXT_IN[15]==0)begin
			    EXT_OUT = {a,EXT_IN};
			 end
			 if(EXT_IN[15]==1)begin
			    EXT_OUT = {b,EXT_IN};
			 end
		 end
		 if(OP==2)begin
		    EXT_OUT = {EXT_IN,a};
		 end
	 end


endmodule
