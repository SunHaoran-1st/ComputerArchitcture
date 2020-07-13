`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:29:34 07/02/2019 
// Design Name: 
// Module Name:    NPC 
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
module NPC(
	 input [31:0] PC_D,
	 input [31:0] PC_F,
	 input [4:0] rs,
	 input [4:0] rt,
    input [15:0] imm,
	 input j_if,
	 input jr_if,
	 input Bne_if,
	 input Beq_if,
	 input Bgezal_if,
	 input IF_Equal,
	 input IF_Bgez,
	 input [31:0] RD1,
	 input [31:0] EXT_OUT,
	 output [31:0] NPC
    );
	 reg [31:0]temp;
	 assign NPC = temp;
	 initial begin
		 temp = 32'h3000;
	 end
	 always@*begin
		 if((j_if==1) && (jr_if==0) && (Bgezal_if==0))begin  //jal与j
		    temp={PC_D[31:28],rs,rt,imm,2'b0};
		 end
		 else if(jr_if==1)begin   //jr
		    temp=RD1;
		 end
		 else if(Bne_if&&!IF_Equal||Beq_if&&IF_Equal||Bgezal_if&&IF_Bgez)begin    //beq与bne有一个满足
		    temp=PC_D+32'h4+EXT_OUT*4;
		 end
		 else if(Bne_if||Beq_if||Bgezal_if)begin    //beq与bne都不满足但存在至少其中一个指令
		    temp=PC_D+32'h8;
		 end
		 else begin
			 temp=PC_F+32'h4;
		 end
	 end

endmodule
