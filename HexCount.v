



module HexCount(
input clk_in,  //clk_in = 12mhz
input rst_n_in,  //rst_n_in, active low
input  [3:0] SW,  //switch key
input  [2:0] BTN,  //button key
output [7:0] Water_led,  //Water_led output
output [2:0] Color_led_1,  //Water_led output
output [2:0] Color_led_2,  //Water_led output
output [8:0] Segment_led_1,  //Segment_led output, MSB~LSB = SPGFEDCBA
output [8:0] Segment_led_2,  //Segment_led output, MSB~LSB = SPGFEDCBA
output [35:0] GPIO
);
wire clk_1Hz;

wire [7:0] cycleState;


Clock_div clk_1Hz_uut
(
.clk_in(clk_in),  //clk_in = 25mhz
.clk_div_pulse_out(clk_1Hz)  //clock divide output
);

Cycle mainCycle
(
.clk(clk_1Hz),
.cycleState(cycleState)
);

wire [8:0] seg_led_1;
wire [8:0] seg_led_2;

Counter mainCounter
(
.cycleState(cycleState),
.seg_led_1(seg_led_1),
.seg_led_2(seg_led_2)
);


assign Segment_led_1 = seg_led_1;
assign Segment_led_2 = seg_led_2;
assign Water_led = 8'hff;
assign Color_led_1 = 3'b111;
assign Color_led_2 = 3'b111;
	
	
	
	
endmodule