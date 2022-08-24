`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:27:22 04/28/2022
// Design Name:   dadda
// Module Name:   C:/Users/as355/Downloads/Dadda44/DADDA4/daa_tb.v
// Project Name:  DADDA4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dadda
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
//test bench
module daa_tb;
	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	// Outputs
	wire [7:0] op;
	// Instantiate the Unit Under Test (UUT)
	dadda uut (
		.a(a), 
		.b(b), 
		.op(op)
	);
	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		// Wait 100 ns for global reset to finish
		#100;
		a=4'b0110;
		b=4'b0110;
	end
endmodule

