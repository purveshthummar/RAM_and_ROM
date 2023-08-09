`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:26:50 08/08/2023
// Design Name:   ram
// Module Name:   E:/xilinx project/memory/ram_tb.v
// Project Name:  memory
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ram
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ram_tb;

	// Inputs
	reg clk;
	reg we;
	reg [5:0] addr;
	reg [7:0] data_in;

	// Outputs
	wire [7:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	ram uut (
		.clk(clk), 
		.we(we), 
		.addr(addr), 
		.data_in(data_in), 
		.data_out(data_out)
	);


	initial begin
		data_in = 8'h01;
		addr = 5'd0;
		we = 1;
		clk = 1;
		#10;
		
		data_in = 8'h02;
		addr = 5'd1;
		#10;
		
		data_in = 8'h03;
		addr = 5'd2;
		#10;
		
		addr = 5'd0;
		we = 0;
		#10;
		
		addr = 5'd1;
		#10;
		
		addr = 5'd2;
		#10;
		
		data_in = 8'h04;
		addr = 5'd1;
		we = 1;
		#10;
		
		addr = 5'd1;
		we = 0;
		#10;
		
		addr = 5'd3;
		#10;
		
		#100 $stop;

	end
	
	always #5 clk=~clk;
      
endmodule

