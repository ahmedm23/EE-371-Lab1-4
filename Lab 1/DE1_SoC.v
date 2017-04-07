module DE1_SoC (CLOCK_50, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, KEY, LEDR,
SW); 
	input 		 CLOCK_50; // 50MHz clock.
	input  [3:0] KEY; // True when not pressed, False when pressed
	input  [9:0] SW;	
	output [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
	output [9:0] LEDR;
	
	// Generate clk off of CLOCK_50, whichClock picks rate.
	wire [31:0] clk;
	parameter whichClock = 25;
	clock_divider cdiv (CLOCK_50, clk);

endmodule
		
	//	A four stage (4 bit) synchronous Johnson up counter, with active low reset
		//a. Design the counter using a behavioural model.
		
	// A four stage (4 bit) synchronous up counter, with active low reset, using schematic entry.	
 

//divided_clocks[0] = 25MHz, [1] = 12.5Mhz, ... [23] = 3Hz, [24] = 1.5Hz,[25] = 0.75Hz, ...
module clock_divider (clock, divided_clocks);
	input clock;
	output reg [31:0] divided_clocks;
	
	initial
		divided_clocks <= 0;
	always @(posedge clock)
		divided_clocks <= divided_clocks + 1;
endmodule
