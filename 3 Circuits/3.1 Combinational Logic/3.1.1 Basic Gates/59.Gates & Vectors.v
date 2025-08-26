// Author: Ujjval Raghavendra L

module top_module( 
    input [3:0] in,
    output [2:0] out_both,
    output [3:1] out_any,
    output [3:0] out_different );
    
    assign out_both 		= in[2:0] & in[3:1];
    assign out_any			= in[2:0] | in[3:1];
    assign out_different  	= in ^ {in[0],in[3:1]}; // RIGHT SHIFT
    
    /*
    
    Suppose:

in = 4'b1011;
Which is:
in[3] = 1
in[2] = 0
in[1] = 1
in[0] = 1

rotated = {in[0],in[3:1]} = {1, 1, 0, 1} = 4'b1101
So now, you're comparing:

in        = 1 0 1 1   (in[3:0])
rotated   = 1 1 0 1   ({in[0],in[3:1]})
index       0 3 2 1 

*/

endmodule
