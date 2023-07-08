


module Cycle(clk, cycleState);
	
	input clk; 
	
	output reg [7:0] cycleState;
	
	initial 
		begin
			cycleState <= 0;
		end 
	
	always @(posedge clk)
		begin 
				if(cycleState >= 8'b11111111) begin
					cycleState <= 0;
				end 
				else begin 
					cycleState <= cycleState + 1;
				end 
		end
	
endmodule 