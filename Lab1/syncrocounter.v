// A four stage (4 bit) synchronous up counter, with active low reset.
	//a. Design the counter using a dataflow model.
	//b. Use the D flip-flop model in the adjacent listing.
module synchrocounter (clk, reset, next);
	input clk, reset;
	wire [3:0] curr;
	output reg [3:0] next;
	
	DFlipFlop bit0(.clk(clk), .reset(reset), .D(curr[0]), .q(next[0]), .qBar(0));
	DFlipFlop bit1(.clk(clk), .reset(reset), .D(curr[1]), .q(next[1]), .qBar(0));
	DFlipFlop bit2(.clk(clk), .reset(reset), .D(curr[2]), .q(next[2]), .qBar(0));
	DFlipFlop bit3(.clk(clk), .reset(reset), .D(curr[3]), .q(next[3]), .qBar(0));
	
	assign next[0] = ~curr[0];
	assign next[1] = curr[0]^curr[1];
	assign next[2] = curr[2]^(curr[1] & curr[0]);
	assign next[3] = curr[3]^(curr[2] & curr[1] & curr[0]);

	//assign count[0] = (in[0])^(in[1]);
	//assign count[1] = (in[1])^(in[2]);
	//assign count[2] = (in[2])^(in[3]);
	//assign count[3] = (in[3]);
endmodule



