`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:15:34 07/04/2019 
// Design Name: 
// Module Name:    Make_TuseTnew 
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
module Make_TuseTnew(
	 input [31:0] IMcode,
	 output reg [1:0] Tuse_rs,
	 output reg [1:0] Tuse_rt,
	 output reg [1:0] Tnew_E,
	 output reg [1:0] Tnew_M,
	 output reg [1:0] Tnew_W
    );
	 wire j,ori,lw,sw,beq,bne,jal,lui,subu,addu,jr;
	 wire [5:0] op,funct;
	 assign op = IMcode[31:26];
	 assign funct = IMcode[5:0];
	 
	 assign j=(op==6'b000010)?1:0;
	 assign ori=(op==6'b001101)?1:0;
	 assign lw=(op==6'b100011)?1:0;
	 assign beq=(op==6'b000100)?1:0;
	 assign lui=(op==6'b001111)?1:0;
	 assign jal=(op==6'b000011)?1:0;
    assign bne=(op==6'b000101)?1:0;
	 assign addu=(op==0&&funct==6'b100001)?1:0;
	 assign subu=(op==0&&funct==6'b100011)?1:0;
	 assign jr=(op==0&&funct==6'b001000)?1:0;
	 
	 assign bgezal=(op==6'b000001)?1:0;//begzal
	 
	 initial begin
		 Tuse_rs = 0;
		 Tuse_rt = 0;
		 Tnew_E = 0;
		 Tnew_M = 0;
		 Tnew_W = 0;
	 end
	 
	 always@*begin  //Make Tuse
		 if(beq||jr||bgezal)begin
			 Tuse_rs = 0;
		 end
		 if(beq)begin
			 Tuse_rt = 0;
		 end
		//-----------------------------
		 if(addu||subu||ori||lw||sw)begin
			 Tuse_rs = 1;
		 end
		 if(addu||subu)begin
			 Tuse_rt = 1;
		 end
		//-----------------------------
		 /*if()begin
			 Tuse_rs = 2;
		 end*/
		 if(sw)begin
			 Tuse_rt = 2;
		 end
		//-----------------------------
		 if(lui||j||jal)begin
			 Tuse_rs = 3;
		 end
		 if(ori||lw||lui||j||jal||jr||bgezal)begin
			 Tuse_rt = 3;
		 end
	 end
	 
	 always@*begin
		 if(jal||bgezal)begin
			 Tnew_E = 0;
		 end
		 if(addu||subu||ori||lui)begin
			 Tnew_E = 1;
		 end
		 if(lw)begin
			 Tnew_E = 2;
		 end
		 //-----------------------------
		 if(addu||subu||ori)begin
			 Tnew_M = 0;
		 end
		 if(lw)begin
			 Tnew_M = 1;
		 end
		//-----------------------------
		 if(addu||subu||ori||lw)begin
			 Tnew_W = 0;
		 end
	 end


endmodule
