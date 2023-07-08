module Clock_div
(
input clk_in,  //clk_in = 12mhz
output reg clk_div_pulse_out  //clock divide output, duty cycle = 1/CLK_DIV_PULSE_PERIOD(one clk_in period)
);

reg [24:0] PULSE_PERIOD = 12500000;
	
//clk_div_pulse_out = clk_in/CLK_DIV_PULSE_PERIOD, duty cycle is 1/CLK_DIV_PULSE_PERIOD(one clk_in period)
reg[24:0] cnt1=0;
always@(posedge clk_in)
	begin
		if(cnt1>=((PULSE_PERIOD>>1)-1)) 
			begin
				cnt1<=0;
				clk_div_pulse_out<=~clk_div_pulse_out;
			end
		else begin
			cnt1<=cnt1+1; 
		end
	end

endmodule
