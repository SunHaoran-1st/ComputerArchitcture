`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:46:15 07/05/2019 
// Design Name: 
// Module Name:    ControlPath 
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
module ControlPath(
	 output Stall,
//D级信号---------------
	 input [31:0] imcode_D,
	 output j_if_d,
	 output jr_if_d,
	 output Bne_if_d,
	 output Beq_if_d,
	 output Bgezal_if_d,
	 output [1:0] ext_op_d,
	 output [1:0] F_rs_D,
    output [1:0] F_rt_D,
	 output [4:0] rs_d,
	 output [4:0] rt_d,
	 output [15:0] imm_d,
//E级信号---------------
	 input [31:0] imcode_E,
	 input [31:0] pc_e,
	 output alu_srcb_e,
	 output [2:0] alu_op_e,
	 output [1:0] F_rs_E,
    output [1:0] F_rt_E,
//M级信号---------------
	 input [31:0] imcode_M,
	 input [31:0] pc_m,
	 input MemWrite_m,
	 input F_rt_M,
	 output j_if_m,
//W级信号---------------
	 input [31:0] imcode_W,
	 input [31:0] pc_w,
	 output RegWrite_w,
	 output [1:0] RegDst_w,
	 output [1:0] MemtoReg_w,
	 output [4:0] rt_w,
	 output [4:0] rd_w
    );
	 
//D级控制信号
wire [4:0] rd_d;
wire [5:0] op_d,funct_d;
//E级控制信号
wire [4:0] rs_e,rt_e,rd_e;
wire [5:0] op_e,funct_e;
wire [15:0] imm_e;
wire RegWrite_e;
wire [1:0] RegDst_e;
//M级控制信号
wire [4:0] rs_m,rt_m,rd_m;
wire [5:0] op_m,funct_m;
wire [15:0] imm_m;
wire RegWrite_m;
wire [1:0] RegDst_m;
//W级控制信号
wire [4:0] rs_w;
wire [5:0] op_w,funct_w;
wire [15:0] imm_w;
//TuseTnew
wire [1:0] Tuse_rs,Tuse_rt,Tnew_E,Tnew_M,Tnew_W;	
//MUX信号
wire [4:0] a3_E,a3_M,a3_W,A3_Ejal,A3_Mjal,A3_Wjal;
assign A3_Ejal = 5'd31; 
assign A3_Mjal = 5'd31; 
assign A3_Wjal = 5'd31; 

//D级控制信号
	 Splitter Splitter_D(
	 .A(imcode_D),
	 //---------------
    .op(op_d),
    .rs(rs_d),
    .rt(rt_d),
    .rd(rd_d),
    .immediate(imm_d),
    .funct(funct_d)
	 );

	 Control Control_D(
	 .op(op_d),
    .funct(funct_d),
    .J_if(j_if_d),
	 .Jr_if(jr_if_d),
    .Bne_if(Bne_if_d),
	 .Beq_if(Beq_if_d),
	 .Bgezal_if(Bgezal_if_d),
    //.RegDst,
    //.ALUSrc,
    //.MemtoReg,
    //.RegWrite,
    //.MemWrite,
    //.ALUOp,
    .EXTOp(ext_op_d)
	 );


//E级控制信号
	 Splitter Splitter_E(
	 .A(imcode_E),
	 //---------------
    .op(op_e),
    .rs(rs_e),
    .rt(rt_e),
    .rd(rd_e),
    .immediate(imm_e),
    .funct(funct_e)
	 );

	 Control Control_E(
	 .op(op_e),
    .funct(funct_e),
    //.J_if,
	 //.Jr_if),
    //.Bne_if,
	 //.Beq_if,
    .RegDst(RegDst_e),
    .ALUSrc(alu_srcb_e),
    //.MemtoReg,
    .RegWrite(RegWrite_e),
    //.MemWrite,
    .ALUOp(alu_op_e)
    //.EXTOp
	 );
	
//M级控制信号
	 Splitter Splitter_M(
	 .A(imcode_M),
	 //---------------
    .op(op_m),
    .rs(rs_m),
    .rt(rt_m),
    .rd(rd_m),
    .immediate(imm_m),
    .funct(funct_m)
	 );

	 Control Control_M(
	 .op(op_m),
    .funct(funct_m),
    .J_if(j_if_m),
	 //.Bgezal_if(j_if_m),
	 //.Jr_if,
    //.Bne_if,
	 //.Beq_if,
    .RegDst(RegDst_m),
    //.ALUSrc,
    //.MemtoReg,
    .RegWrite(RegWrite_m),
    .MemWrite(MemWrite_m)
    //.ALUOp,
    //.EXTOp,
	 );
	 
//W级控制信号
	 Splitter Splitter_W(
	 .A(imcode_W),
	 //---------------
    .op(op_w),
    .rs(rs_w),
    .rt(rt_w),
    .rd(rd_w),
    .immediate(imm_w),
    .funct(funct_w)
	 );

	 Control Control_W(
	 .op(op_w),
    .funct(funct_w),
    //.J_if,
	 //.Jr_if,
    //.Bne_if,
	 //.Beq_if,
    .RegDst(RegDst_w),
    //.ALUSrc,
    .MemtoReg(MemtoReg_w),
    .RegWrite(RegWrite_w)
    //.MemWrite,
    //.ALUOp,
    //.EXTOp,
	 );
 
//Make_TuseTnew(D级)
	 Make_TuseTnew Make_TuseTnew_D(
	 .IMcode(imcode_D),
	 .Tuse_rs(Tuse_rs),
	 .Tuse_rt(Tuse_rt)
	 //.Tnew_E,
	 //.Tnew_M,
	 //.Tnew_W
	 );
	 
//Make_TuseTnew(E级)
	 Make_TuseTnew Make_TuseTnew_E(
	 .IMcode(imcode_E),
	 //.Tuse_rs(),
	 //.Tuse_rt,
	 .Tnew_E(Tnew_E)
	 //.Tnew_M,
	 //.Tnew_W
	 );

//Make_TuseTnew(M级)
	 Make_TuseTnew Make_TuseTnew_M(
	 .IMcode(imcode_M),
	 //.Tuse_rs(),
	 //.Tuse_rt,
	 //.Tnew_E,
	 .Tnew_M(Tnew_M)
	 //.Tnew_W
	 );
	 
//Make_TuseTnew(W级)
	 Make_TuseTnew Make_TuseTnew_W(
	 .IMcode(imcode_W),
	 //.Tuse_rs(),
	 //.Tuse_rt,
	 //.Tnew_E,
	 //.Tnew_M,
	 .Tnew_W(Tnew_W)
	 );
	 

//A3_E-MUX
	 MUX3to1_5 A3_E_MUX(
	 .A(rt_e),
	 .B(rd_e),
	 .C(A3_Ejal),
	 .MUX_OP(RegDst_e),
	 //-----------
	 .MUX_OUT(a3_E)
	 );
	 
//A3_M-MUX
	 MUX3to1_5 A3_M_MUX(
	 .A(rt_m),
	 .B(rd_m),
	 .C(A3_Mjal),
	 .MUX_OP(RegDst_m),
	 //-----------
	 .MUX_OUT(a3_M)
	 );
	 
//A3_W-MUX
	 MUX3to1_5 A3_W_MUX(
	 .A(rt_w),
	 .B(rd_w),
	 .C(A3_Wjal),
	 .MUX_OP(RegDst_w),
	 //-----------
	 .MUX_OUT(a3_W)
	 );
	 
//Hazard
	 Hazard Hazard(
	 .Tuse_rs(Tuse_rs),
    .Tuse_rt(Tuse_rt),
    .Tnew_E(Tnew_E),
    .Tnew_M(Tnew_M),
    .Tnew_W(Tnew_W),
	 .A1_D(rs_d),
	 .A2_D(rt_d),
	 .A1_E(rs_e),
	 .A2_E(rt_e),
	 .A2_M(rt_m),
	 
	 .A3_E(a3_E),
	 .A3_M(a3_M),
	 .A3_W(a3_W),
	 .RegWrite_E(RegWrite_e),
	 .RegWrite_M(RegWrite_m),
	 .RegWrite_W(RegWrite_w),
	 //-----------
    .Stall(Stall),
    .F_rs_D(F_rs_D),
    .F_rt_D(F_rt_D),
    .F_rs_E(F_rs_E),
    .F_rt_E(F_rt_E),
    .F_rt_M(F_rt_M)
	 );
endmodule
