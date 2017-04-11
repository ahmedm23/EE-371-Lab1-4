// A four stage (4 bit) synchronous up counter, with active low reset.
	//a. Design the counter using a dataflow model.
	//b. Use the D flip-flop model in the adjacent listing.
module synchrocounter (in, clk, reset, count);
	input clk, reset;
	input [3:0] in;
	output reg [3:0] count;
	
	//assign count[0] = (in[0])^(in[1]);
	//assign count[1] = (in[1])^(in[2]);
	//assign count[2] = (in[2])^(in[3]);
	//assign count[3] = (in[3]);
endmodule

