`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:23:54 08/09/2023
// Design Name:   rom
// Module Name:   E:/xilinx project/memory/rom_tb.v
// Project Name:  memory
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rom
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module rom_tb;

	// Inputs
	reg clk;
	reg en;
	reg [3:0] addr;

	// Outputs
	wire [3:0] dout;

	// Instantiate the Unit Under Test (UUT)
	rom uut (
		.clk(clk), 
		.en(en), 
		.addr(addr), 
		.dout(dout)
	);

	initial begin
		en = 0;
		clk = 1;
		#10;
		
		en = 1;
		addr = 4'b1010;
		#10;
		
		addr = 4'b1101;
		#10;
		
		en = 0;
		addr = 4'b1111;
		#10;
		
		en = 1;
		addr = 4'b1000;
		#10;
		
		addr = 4'b0000;
		#10;
		
		addr = 4'bxxxx;
		#10;
		
		#80 $stop;
	end
	
	always #5 clk = ~clk;
      
endmodule

