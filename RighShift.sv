/*
write a module that shifts 8-bit input data[7:0] right logically
by the number of positions specified by 3-bit input shift[2:0] ; 
the shifted result is available on  8-bit output shout[7:0]
*/
module TwoBitRightShift(
	// the endianness of input memory has to be reversed 
	// for memory to accomidate logic
	input logic [2:0] shiftBit,
	input logic [7:0] memory,
	output logic [0:7] shout
	);
//TDODO: make little endian 


// Shout is right shift of memory by shiftbits bits
assign shout[0] = (shiftBit - 1 >=0) ? 0 : memory[7 + shiftBit]; 
assign shout[1] = (shiftBit - 2 >=0) ? 0 : memory[6 + shiftBit]; 
assign shout[2] = (shiftBit - 3 >=0) ? 0 : memory[5 + shiftBit]; 
assign shout[3] = (shiftBit - 4 >=0) ? 0 : memory[4 + shiftBit];  
assign shout[4] = (shiftBit - 5 >=0) ? 0 : memory[3 + shiftBit];
assign shout[5] = (shiftBit - 6 >=0) ? 0 : memory[2 + shiftBit];
assign shout[6] = (shiftBit - 7 >=0) ? 0 : memory[1 + shiftBit];
assign shout[7] = (shiftBit - 8 >=0) ? 0 : memory[0 + shiftBit];


endmodule