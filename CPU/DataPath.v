`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:54:42 07/04/2019 
// Design Name: 
// Module Name:    DataPath 
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
module DataPath(
	 input CLK,
	 input Reset,
	 input Stall,
//D级信号------------------
	 input [1:0] F_rs_D,
	 input [1:0] F_rt_D,
	 input [4:0] rs_d,
	 input [4:0] rt_d,
	 input [15:0] imm_d,
	 input j_if_d,
	 input jr_if_d,
	 input Beq_if_d,
	 input Bne_if_d,
	 input Bgezal_if_d,
	 input [1:0] ext_op_d,
	 output [31:0] imcode_D,
//E级信号------------------
	 input [1:0] F_rs_E,
	 input [1:0] F_rt_E,
	 input [2:0]alu_op_e,
	 input alu_srcb_e,
	 output [31:0] imcode_E,
	 output [31:0] pc_e,
//M级信号------------------
	 input F_rt_M,
	 input MemWrite_m,
	 input j_if_m,
	 output [31:0] imcode_M,
	 output [31:0] pc_m,
//W级信号------------------
	 input [1:0] RegDst_w,
	 input RegWrite_W,
	 input [4:0] rt_w,
	 input [4:0] rd_w,
	 input [1:0] MemtoReg_w,
	 output [31:0] imcode_W,
	 output [31:0] pc_w
    );

//PC
wire [31:0] npc,pc_f;
wire [9:0] im_in;
	 PC PC(
	 .CLK(CLK),
	 .Reset(Reset),
	 .Stall(Stall),
	 .NPC(npc),
	 //-----------
	 .IMaddr(im_in),
	 .PC(pc_f)
	 );
	 
//IM
wire [31:0] imcode_F;
assign im_in = pc_f[11:2];
	 IM IM(
	 .IM_in(im_in),
	 //-----------
	 .IM_out(imcode_F)
	 );
	 
//F_D流水寄存器
wire [31:0] pc_d;
	 F_D F_D(
	 .IMcode_F(imcode_F),
	 .PC_F(pc_f),
	 .CLK(CLK),
	 .Reset(Reset),
	 .Stall(Stall),
	 //-----------
	 .IMcode_D(imcode_D),
	 .PC_D(pc_d)
	 );
	 
//GRF
wire [31:0] grf_wd,rd1,rd2;
wire [4:0] a3;
	 GRF GRF(
	 .A1(rs_d),
	 .A2(rt_d),
	 .A3(a3),
	 .WD_RF(grf_wd),
	 .PC(pc_w),
	 .CLK(CLK),
	 .Reset(Reset),
	 .RegWrite(RegWrite_W),
	 //-----------
	 .RD1(rd1),
	 .RD2(rd2)
	 );
	 
//GRF-RD1-转发MUX(D级)
wire [31:0] wtod_rs_data,mtod_rs_data,etod_rs_data,forward_rd1_d;
	 MUX4to1_32 FMUX_rs_D(
	 .A(rd1),
	 .B(wtod_rs_data),
	 .C(mtod_rs_data),
	 .D(etod_rs_data),
	 .MUX_OP(F_rs_D),
	 //-----------
	 .MUX_OUT(forward_rd1_d)
	 );
	 
//GRF-RD2-转发MUX(D级)
wire [31:0] wtod_rt_data,mtod_rt_data,etod_rt_data,forward_rd2_d;
	 MUX4to1_32 FMUX_rt_D(
	 .A(rd2),
	 .B(wtod_rt_data),
	 .C(mtod_rt_data),
	 .D(etod_rt_data),
	 .MUX_OP(F_rt_D),
	 //-----------
	 .MUX_OUT(forward_rd2_d)
	 );
	 
//CMP
wire if_equal,if_bgez;
	 CMP CMP(
	 .RF_RD1(forward_rd1_d),
    .RF_RD2(forward_rd2_d),
	 //-----------
    .IF_Equal(if_equal),
	 .IF_Bgez(if_bgez)
	 );
	 
//EXT
wire [31:0] ext_out_d;
	 EXT EXT(
	 .EXT_IN(imm_d),
    .OP(ext_op_d),
	 //-----------
    .EXT_OUT(ext_out_d)
	 );
	 
//NPC
	 NPC NPC(
	 .PC_D(pc_d),
	 .PC_F(pc_f),
	 .rs(rs_d),
	 .rt(rt_d),
    .imm(imm_d),
	 .j_if(j_if_d),
	 .jr_if(jr_if_d),
	 .Bne_if(Bne_if_d),
	 .Beq_if(Beq_if_d),
	 .Bgezal_if(Bgezal_if_d),
	 .IF_Equal(if_equal),
	 .IF_Bgez(if_bgez),
	 .RD1(forward_rd1_d),
	 .EXT_OUT(ext_out_d),
	 //-----------
	 .NPC(npc)
	 );
	 
//D_E流水寄存器
wire [31:0] rf_rd1_e,rf_rd2_e,ext_out_e;
	 D_E D_E(
	 .PC_D(pc_d),
	 .IMcode_D(imcode_D),
	 .RF_RD1(forward_rd1_d),
	 .RF_RD2(forward_rd2_d),
	 .ext_imm(ext_out_d),
	 .Stall(Stall),
	 .CLK(CLK),
	 .Reset(Reset),
	 //-----------
	 .PC_E(pc_e),
	 .IMcode_E(imcode_E),
	 .RS_E(rf_rd1_e),
	 .RT_E(rf_rd2_e),
	 .EXT_E(ext_out_e)
	 );
	 assign etod_rs_data = pc_e + 8;
	 assign etod_rt_data = pc_e + 8;
//GRF_RD1_转发MUX(E级)
wire [31:0] wtoe_rs_data,mtoe_rs_data,forward_rd1_e;	 
	 MUX3to1_32 FMUX_rs_E(
	 .A(rf_rd1_e),
	 .B(wtoe_rs_data),
	 .C(mtoe_rs_data),
	 //-----------
	 .MUX_OP(F_rs_E),
	 .MUX_OUT(forward_rd1_e)
	 );
	 
//GRF_RD2_转发MUX(E级)
wire [31:0] wtoe_rt_data,mtoe_rt_data,forward_rd2_e;	 
	 MUX3to1_32 FMUX_rt_E(
	 .A(rf_rd2_e),
	 .B(wtoe_rt_data),
	 .C(mtoe_rt_data),
	 //-----------
	 .MUX_OP(F_rt_E),
	 .MUX_OUT(forward_rd2_e)
	 );
	 
//ALU_SrcB_MUX
wire [31:0] alu_inb;	 
	 MUX2to1_32 ALU_SrcB_MUX(
	 .A(forward_rd2_e),
	 .B(ext_out_e),
	 .MUX_OP(alu_srcb_e),
	 //-----------
	 .MUX_OUT(alu_inb)
	 );
	 
//ALU
wire [31:0] alu_out_e;
	 ALU ALU(
	 .SrcA(forward_rd1_e),
    .SrcB(alu_inb),
    .ALUOp(alu_op_e),
	 //-----------
    .ALUOUT(alu_out_e)
	 );
	 
//E_M级流水寄存器
wire [31:0] ao_m,rd2_m;
	 E_M E_M(
	 .IMcode_E(imcode_E),
    .PC_E(pc_e),
    .AO_E(alu_out_e),
    .RT_E(forward_rd2_e),
	 .CLK(CLK),
	 .Reset(Reset),
	 //-----------
    .IMcode_M(imcode_M),
    .PC_M(pc_m),
    .AO_M(ao_m),
    .RT_M(rd2_m)
	 );
	
//DM_RD2转发MUX(M级)
wire [31:0] forward_rd1_m,wtom_rt_data;
	MUX2to1_32 FMUX_rt_M(
	 .A(rd2_m),
	 .B(wtom_rt_data),
	 .MUX_OP(F_rt_M),
	 //-----------
	 .MUX_OUT(forward_rd1_m)
	 );
	 
//M级转发Data_MUX
wire [31:0] pc8_m,forward_data_m;
assign mtod_rs_data = forward_data_m;
assign mtod_rt_data = forward_data_m;
assign mtoe_rs_data = forward_data_m;
assign mtoe_rt_data = forward_data_m;
assign pc8_m = pc_m + 8;
	 MUX2to1_32 MUX_AO_PC8_M(
	 .A(ao_m),
	 .B(pc8_m),
	 .MUX_OP(j_if_m),
	 //-----------
	 .MUX_OUT(forward_data_m)
	 );
	 
//DM
wire [31:0] dm_out_m;
	 DM DM(
	 .AO_E(ao_m),
    .RT_E(forward_rd1_m),
	 .PC_E(pc_m),
    .CLK(CLK),
    .Reset(Reset),
    .MemWrite(MemWrite_m),
	 //-----------
    .DM_OUT(dm_out_m)
	 );
	 
//M_W级流水寄存器
wire [31:0] ao_w,dm_out_w;
	 M_W M_W(
	 .IMcode_M(imcode_M),
    .PC_M(pc_m),
    .AO_M(ao_m),
    .DO_M(dm_out_m),
	 .CLK(CLK),
	 .Reset(Reset),
	 //-----------
    .IMcode_W(imcode_W),
    .PC_W(pc_w),
    .AO_W(ao_w),
    .DO_W(dm_out_w)
	 );
	 
//W级转发Data_MUX
wire [31:0] pc8_w,forward_data_w;
assign pc8_w = pc_w + 8;
assign wtod_rs_data = forward_data_w;
assign wtod_rt_data = forward_data_w;
assign wtoe_rs_data = forward_data_w;
assign wtoe_rt_data = forward_data_w;
assign wtom_rt_data = forward_data_w;
	 MUX3to1_32 MUX_AO_DM_PC8_W(
	 .A(dm_out_w),
	 .B(ao_w),
	 .C(pc8_w),
	 .MUX_OP(MemtoReg_w),
	 //-----------
	 .MUX_OUT(forward_data_w)
	 );
	 
//A3_MUX
wire [4:0] A3_jal;
assign A3_jal = 31;
	 MUX3to1_5 A3_MUX(
	 .A(rt_w),
	 .B(rd_w),
	 .C(A3_jal),
	 .MUX_OP(RegDst_w),
	 //-----------
	 .MUX_OUT(a3)
	 );
assign grf_wd=forward_data_w;
//WD_GRF_MUX
	/* MUX3to1_32 WD_RF_MUX(
	 .A(dm_out_w),
	 .B(ao_w),
	 .C(pc8_w),
	 //-----------
	 .MUX_OP(MemtoReg_w),
	 .MUX_OUT(grf_wd)
	 );*/
endmodule
