// A four stage (4 bit) synchronous up counter, with active low reset.
	//a. Design the counter using a dataflow model.
	//b. Use the D flip-flop model in the adjacent listing.
synchrocounter module(in, clk, reset, count);
	input clk, reset;
	input in [3:0];
	output reg [3:0];
	
	assign count[0] = (in[0])^(in[1]);
	assign count[1] = (in[1])^(in[2]);
	assign count[2] = (in[2])^(in[3]);
	assign count[3] = (in[3]);
endmodule

