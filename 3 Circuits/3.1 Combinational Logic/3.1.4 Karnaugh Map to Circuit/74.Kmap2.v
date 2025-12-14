// Author: Ujjval Raghavendra L

module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
    
    assign out= 
        		(~b&~c)  |   		 
        		(~a&~d)  | 
        		(a&c&d) |
        		(d&b&c);

endmodule
