`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:27:26 08/08/2023 
// Design Name: 
// Module Name:    ram 
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
module ram(clk,we,addr,data_in,data_out);  //design 64*8 bit single port ram
input [7:0]data_in;
input [5:0]addr;
input we,clk;
output [7:0]data_out;

reg [7:0] ram [63:0]; //array called 'ram' with 64 elements, where each element is 8-bit wide register 
reg [5:0] addr_reg;

always @ (posedge we)
	begin
		if (we) //write enable
			ram[addr] <= data_in;
		else    //read enable
			addr_reg <= addr;
	end
	
	assign data_out= ram[addr_reg];

endmodule
