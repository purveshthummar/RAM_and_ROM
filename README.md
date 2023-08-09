# RAM_and_ROM
here we make 64x8 bit RAM and 8x8 bit ROM memory design in verilog.
# RAM
Random Access Memory(RAM) is volatile memory, which means that the stored information is lost when there is no power.when we open program, it gets loaded from hard drive into RAM. this is because reading of data from RAM is much faster than reading data from hard drive.

there are two type of RAM- 1.single port RAM, 2.dual port RAM. single port RAM can be access one address at one time thus we can read or write only one memory cell during each clock cycle. in dual port RAM we can simultaneously read and write diffrent memory cell at different address.

here we design 64x8 bit single port RAM. which means we have 64 address location on RAM in each we store 8-bit of data.there are 4 input port in which data_in is 8-bit, addr is 6-bit because 6bit are sufficiant to store 64 location (2^6 = 64), we (write enable)pin if it is 1(high) then write data in ram and if 0(low) then readinng data from ram, clk is clock signal. data_ot is output port  which is 8-bit.
![block_diagram](https://github.com/purveshthummar/RAM_and_ROM/assets/140932979/5568193f-3b60-4ae7-a0e8-4c6a0528374b)

OUTPUT:-
![op_ram](https://github.com/purveshthummar/RAM_and_ROM/assets/140932979/dd08a765-ece0-4a21-a7c2-275142fc1e71)
