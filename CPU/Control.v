`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:25:03 07/02/2019 
// Design Name: 
// Module Name:    Control 
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
module Control(
    input [5:0] op,
    input [5:0] funct,
	 output Jr_if,
    output Bne_if,
    output J_if,
    output [1:0] RegDst,//0为rt,1为rd，2为31
    output ALUSrc,
    output [1:0] MemtoReg,//0为dm输出，1为alu输出，2为pc+8
    output RegWrite,
    output MemWrite,
    output Beq_if,
	 output Bgezal_if,
    output [2:0] ALUOp,
    output [1:0] EXTOp
    );
wire j,ori,lw,sw,beq,bne,jal,lui,subu,addu,jr,bgezal;
	 
assign j=	(op==6'b000010)?1:0;
assign ori=	(op==6'b001101)?1:0;
assign lw=	(op==6'b100011)?1:0;
assign sw=	(op==6'b101011)?1:0;
assign beq=	(op==6'b000100)?1:0;
assign lui=	(op==6'b001111)?1:0;
assign jal=	(op==6'b000011)?1:0;
assign bne=	(op==6'b000101)?1:0;
assign addu=(op==0&&funct==6'b100001)?1:0;
assign subu=(op==0&&funct==6'b100011)?1:0;
assign jr=	(op==0&&funct==6'b001000)?1:0;
assign bgezal=(op==6'b000001);//begzal
assign EXTOp[1]=lui;
assign EXTOp[0]=bgezal||bne||beq||sw||lw;
assign ALUOp[2]=0;
assign ALUOp[1]=ori;
assign ALUOp[0]=subu;
assign Beq_if=beq;
assign MemWrite=sw;
assign RegWrite=jal||ori||lw||subu||addu||lui||bgezal;
assign ALUSrc=lw||sw||lui||ori;
assign RegDst[1]=jal||bgezal;        //bgezal
assign RegDst[0]=addu||subu ;
assign MemtoReg[1]=jal||bgezal;      //bgezal
assign MemtoReg[0]=addu||subu||ori||lui;

assign J_if=j||jal||jr||bgezal;
assign Bne_if=bne;
assign Jr_if=jr;
assign Bgezal_if=bgezal;	

 
endmodule
