`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:10:06 07/04/2019 
// Design Name: 
// Module Name:    Hazard 
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
module Hazard(
    input [1:0] Tuse_rs,
    input [1:0] Tuse_rt,
    input [1:0] Tnew_E,
    input [1:0] Tnew_M,
    input [1:0] Tnew_W,
	 input [4:0] A1_D,
	 input [4:0] A2_D,
	 input [4:0] A1_E,
	 input [4:0] A2_E,
	 input [4:0] A2_M,
	 
	 input [4:0] A3_E,
	 input [4:0] A3_M,
	 input [4:0] A3_W,
	 input RegWrite_E,
	 input RegWrite_M,
	 input RegWrite_W,
    output Stall,
    output [1:0] F_rs_D,
    output [1:0] F_rt_D,
    output [1:0] F_rs_E,
    output [1:0] F_rt_E,
    output F_rt_M
    );
	 wire Stall_rs,Stall_rt,Stall_rs_0E1,Stall_rs_0E2,Stall_rs_1E2,Stall_rs_0M1;
	 wire Stall_rt_0E1,Stall_rt_0E2,Stall_rt_1E2,Stall_rt_0M1;
	 //生成暂停信号Stall
	 assign Stall = Stall_rs || Stall_rt;
	 
	 assign Stall_rs = Stall_rs_0E1||Stall_rs_0E2||Stall_rs_1E2||Stall_rs_0M1;
	 assign Stall_rt = Stall_rt_0E1||Stall_rt_0E2||Stall_rt_1E2||Stall_rt_0M1;
	 
	 assign Stall_rs_0E1 = (Tuse_rs==2'b00)&&(Tnew_E==2'b01)&&(A1_D==A3_E)&&RegWrite_E;
	 assign Stall_rs_0E2 = (Tuse_rs==2'b00)&&(Tnew_E==2'b10)&&(A1_D==A3_E)&&RegWrite_E;
	 assign Stall_rs_1E2 = (Tuse_rs==2'b01)&&(Tnew_E==2'b10)&&(A1_D==A3_E)&&RegWrite_E;
	 assign Stall_rs_0M1 = (Tuse_rs==2'b00)&&(Tnew_M==2'b01)&&(A1_D==A3_M)&&RegWrite_M;
	 
	 assign Stall_rt_0E1 = (Tuse_rt==2'b00)&&(Tnew_E==2'b01)&&(A2_D==A3_E)&&RegWrite_E;
	 assign Stall_rt_0E2 = (Tuse_rt==2'b00)&&(Tnew_E==2'b10)&&(A2_D==A3_E)&&RegWrite_E;
	 assign Stall_rt_1E2 = (Tuse_rt==2'b01)&&(Tnew_E==2'b10)&&(A2_D==A3_E)&&RegWrite_E;
	 assign Stall_rt_0M1 = (Tuse_rt==2'b00)&&(Tnew_M==2'b01)&&(A2_D==A3_M)&&RegWrite_M;
	 
	 //生成转发信号
	 //To D
	 `define EtoD_PC8 3
	 `define MtoD_RT_PC8 2
	 `define WtoD_DM_AO_PC8 1
	 //To E
	 `define MtoE_RT_PC8 2
	 `define WtoE_DM_AO_PC8 1
	 //To M
	 `define WtoM_DM_AO_PC8 1
	 //SELF
	 `define SELF 0
	 //生成向D级转发信号---------------------------------------------------------------------
	 assign F_rs_D = ((A1_D==A3_E)&&(Tnew_E==2'b00)&&(RegWrite_E==1)&&(A3_E!=0))? `EtoD_PC8:
		              ((A1_D==A3_M)&&(Tnew_M==2'b00)&&(RegWrite_M==1)&&(A3_M!=0))? `MtoD_RT_PC8:
						  ((A1_D==A3_W)&&(RegWrite_W==1)&&(A3_W!=0))? `WtoD_DM_AO_PC8: `SELF;
						  
	 assign F_rt_D = ((A2_D==A3_E)&&(Tnew_E==2'b00)&&(RegWrite_E==1)&&(A3_E!=0))? `EtoD_PC8:
						  ((A2_D==A3_M)&&(Tnew_M==2'b00)&&(RegWrite_M==1)&&(A3_M!=0))? `MtoD_RT_PC8:
						  ((A2_D==A3_W)&&(RegWrite_W==1)&&(A3_W!=0))? `WtoD_DM_AO_PC8: `SELF;
	 //生成向E级转发信号---------------------------------------------------------------------				  
	 assign F_rs_E = ((A1_E==A3_M)&&(Tnew_M==2'b00)&&(RegWrite_M==1)&&(A3_M!=0))? `MtoE_RT_PC8:
		              ((A1_E==A3_W)&&(RegWrite_W==1)&&(A3_W!=0))? `WtoE_DM_AO_PC8: `SELF;
						  
	 assign F_rt_E = ((A2_E==A3_M)&&(Tnew_M==2'b00)&&(RegWrite_M==1)&&(A3_M!=0))? `MtoE_RT_PC8:
		              ((A2_E==A3_W)&&(RegWrite_W==1)&&(A3_W!=0))? `WtoE_DM_AO_PC8: `SELF;
	 //生成向M级转发信号---------------------------------------------------------------------
	 assign F_rt_M = ((A2_M==A3_W)&&(RegWrite_W==1)&&(A3_W!=0))? `WtoM_DM_AO_PC8: `SELF;

endmodule
