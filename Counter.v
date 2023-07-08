


module Counter(cycleState, seg_led_1, seg_led_2);
	input [7:0] cycleState;
	
	output [8:0] seg_led_1;
	output [8:0] seg_led_2;
	
	reg[8:0] mem [15:0]; 
	initial 
		begin
			mem[0] = 9'h3f;   //  0
			mem[1] = 9'h06;   //  1
			mem[2] = 9'h5b;   //  2
			mem[3] = 9'h4f;   //  3
			mem[4] = 9'h66;   //  4
			mem[5] = 9'h6d;   //  5
			mem[6] = 9'h7d;   //  6
			mem[7] = 9'h07;   //  7
			mem[8] = 9'h7f;   //  8
			mem[9] = 9'h6f;   //  9
			mem[10]= 9'h77;   //  A
			mem[11]= 9'h7C;   //  b
			mem[12]= 9'h39;   //  C
			mem[13]= 9'h5e;   //  d
			mem[14]= 9'h79;   //  E
			mem[15]= 9'h71;   //  F
		end
	
	assign seg_led_1 = mem[cycleState[7:4]];
	assign seg_led_2 = mem[cycleState[3:0]];
	
	
endmodule