`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:41:50 06/26/2019 
// Design Name: 
// Module Name:    mips 
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
module mips(
	input clk,  //clock
	input reset  //reset
	);
	
//D级连线
wire stall,j_if_d,jr_if_d,Beq_if_d,Bne_if_d,Bgezal_if_d;
wire [1:0] ext_op_d,F_rs_D,F_rt_D;
wire [4:0] rs_d,rt_d;
wire [15:0] imm_d;
wire [31:0] imcode_D;
//E级连线
wire [1:0] F_rs_E,F_rt_E;
wire [2:0] alu_op_e;
wire alu_srcb_e;
wire [31:0] imcode_E,pc_e;
//M级连线
wire F_rt_M;
wire MemWrite_m;
wire j_if_m;
wire [31:0] imcode_M,pc_m;
//W级连线
wire RegWrite_d;
wire [1:0] RegDst_w,MemtoReg_w;
wire [4:0] rt_w,rd_w;
wire [31:0] imcode_W,pc_w;

//DataPath-------------------------------------------------------------------------//
	 DataPath DataPath(
	 .CLK(clk),
	 .Reset(reset),
	 .Stall(stall),
//D级信号------------------
	 .F_rs_D(F_rs_D),
	 .F_rt_D(F_rt_D),
	 .rs_d(rs_d),
	 .rt_d(rt_d),
	 .imm_d(imm_d),
	 .j_if_d(j_if_d),
	 .jr_if_d(jr_if_d),
	 .Beq_if_d(Beq_if_d),
	 .Bne_if_d(Bne_if_d),
	 .Bgezal_if_d(Bgezal_if_d),
	 .ext_op_d(ext_op_d),
	 //-----------
	 .imcode_D(imcode_D),
//E级信号------------------
	 .F_rs_E(F_rs_E),
	 .F_rt_E(F_rt_E),
	 .alu_op_e(alu_op_e),
	 .alu_srcb_e(alu_srcb_e),
	 .imcode_E(imcode_E),
	 .pc_e(pc_e),
//M级信号------------------
	 .F_rt_M(F_rt_M),
	 .MemWrite_m(MemWrite_m),
	 .imcode_M(imcode_M),
	 .pc_m(pc_m),
	 .j_if_m(j_if_m),
//W级信号------------------
	 .RegDst_w(RegDst_w),
	 .rt_w(rt_w),
	 .rd_w(rd_w),
	 .imcode_W(imcode_W),
	 .MemtoReg_w(MemtoReg_w),
	 .RegWrite_W(RegWrite_w),
	 .pc_w(pc_w)
	 );
	 

//ControlPath-------------------------------------------------------------------------//
	 ControlPath ControlPath(
	 .Stall(stall),
//D级信号---------------
	 .imcode_D(imcode_D),
	 //-----------
	 .j_if_d(j_if_d),
	 .jr_if_d(jr_if_d),
	 .Bne_if_d(Bne_if_d),
	 .Beq_if_d(Beq_if_d),
	 .Bgezal_if_d(Bgezal_if_d),
	 .ext_op_d(ext_op_d),
	 .F_rs_D(F_rs_D),
    .F_rt_D(F_rt_D),
	 .rs_d(rs_d),
	 .rt_d(rt_d),
	 .imm_d(imm_d),
//E级信号---------------
	 .imcode_E(imcode_E),
	 .pc_e(pc_e),
	 .alu_srcb_e(alu_srcb_e),
	 .alu_op_e(alu_op_e),
	 .F_rs_E(F_rs_E),
    .F_rt_E(F_rt_E),
//M级信号---------------
	 .imcode_M(imcode_M),
	 .pc_m(pc_m),
	 .MemWrite_m(MemWrite_m),
	 .j_if_m(j_if_m),
	 .F_rt_M(F_rt_M),
//W级信号---------------
	 .imcode_W(imcode_W),
	 .RegWrite_w(RegWrite_w),
	 .pc_w(pc_w),
	 .RegDst_w(RegDst_w),
	 .MemtoReg_w(MemtoReg_w),
	 .rt_w(rt_w),
	 .rd_w(rd_w)
	 );

endmodule
