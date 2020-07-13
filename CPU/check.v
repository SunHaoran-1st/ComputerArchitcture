`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:44:15 07/07/2019
// Design Name:   Control
// Module Name:   E:/ComputerArchitcture/P5/CPU/check.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module check;

	// Inputs
	reg [5:0] op;
	reg [5:0] funct;

	// Outputs
	wire Jr_if;
	wire Bne_if;
	wire J_if;
	wire [1:0] RegDst;
	wire ALUSrc;
	wire [1:0] MemtoReg;
	wire RegWrite;
	wire MemWrite;
	wire Beq_if;
	wire Bgezal_if;
	wire [2:0] ALUOp;
	wire [1:0] EXTOp;

	// Instantiate the Unit Under Test (UUT)
	Control uut (
		.op(op), 
		.funct(funct), 
		.Jr_if(Jr_if), 
		.Bne_if(Bne_if), 
		.J_if(J_if), 
		.RegDst(RegDst), 
		.ALUSrc(ALUSrc), 
		.MemtoReg(MemtoReg), 
		.RegWrite(RegWrite), 
		.MemWrite(MemWrite), 
		.Beq_if(Beq_if), 
		.Bgezal_if(Bgezal_if), 
		.ALUOp(ALUOp), 
		.EXTOp(EXTOp)
	);

	initial begin
		// Initialize Inputs
		op = 6'b000010;
		funct = 6'b100001;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

