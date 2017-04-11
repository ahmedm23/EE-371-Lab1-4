// A four stage (4 bit) ripple up (asynchronous) counter, with active low reset.
//a. Design the counter using a gate or structural model.
//b. Use the D flip-flop model in the adjacent listing.
module rippleCounter(clk, reset, count);
   input clk, reset;
   output [3:0] count;
   wire   [3:0] countbar;
	
   DFlipFlop bit0(.clk, .reset, .D(countbar[0]), .q(count[0]), .qBar(countbar[0]));
   DFlipFlop bit1(.clk(count[0]), .reset, .D(countbar[1]), .q(count[1]), .qBar(countbar[1]));
   DFlipFlop bit2(.clk(count[1]), .reset, .D(countbar[2]), .q(count[2]), .qBar(countbar[2]));
   DFlipFlop bit3(.clk(count[2]), .reset, .D(countbar[3]), .q(count[3]), .qBar(countbar[3]));

endmodule

module DFlipFlop(q, qBar, D, clk, reset);
   input D, clk, reset;
   output q, qBar;
   reg q;
	
   not n1 (qBar, q);
		
   always @(negedge reset or posedge clk)
      begin
      if(!reset)
         q = 0;
      else
         q = D;
      end
endmodule