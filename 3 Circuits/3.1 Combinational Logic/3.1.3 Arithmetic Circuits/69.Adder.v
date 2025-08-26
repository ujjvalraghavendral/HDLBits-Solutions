// Author: Ujjval Raghavendra L
//Soultion 1
module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    wire cin;
    reg [3:0] cout;
    
    fa inst1 (.x(x[0]),.y(y[0]),.cin(),.cout(cout[0]),.sum(sum[0]));
    fa inst2 (.x(x[1]),.y(y[1]),.cin(cout[0]),.cout(cout[1]),.sum(sum[1]));
    fa inst3 (.x(x[2]),.y(y[2]),.cin(cout[1]),.cout(cout[2]),.sum(sum[2]));
    fa inst4 (.x(x[3]),.y(y[3]),.cin(cout[2]),.cout(sum[4]),.sum(sum[3]));

endmodule
    

module fa( 
    input x, y, cin,
    output cout, sum );
    assign sum = x^y^cin;
    assign cout = x*y + cin*(x^y);

endmodule

//Solution 2

/*
module top_module (
	input [3:0] x,
	input [3:0] y,
	output [4:0] sum
);

	// This circuit is a 4-bit ripple-carry adder with carry-out.
	assign sum = x+y;	// Verilog addition automatically produces the carry-out bit.

	// Verilog quirk: Even though the value of (x+y) includes the carry-out, (x+y) is still considered to be a 4-bit number (The max width of the two operands).
	// This is correct:
	// assign sum = (x+y);
	// But this is incorrect:
	// assign sum = {x+y};	// Concatenation operator: This discards the carry-out
endmodule
*/