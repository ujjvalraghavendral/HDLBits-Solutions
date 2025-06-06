// Author: Ujjval Raghavendra L

module top_module( 
    input [7:0] in,
    output [7:0] out
);
    // Solution 1
    /*
    assign out={in[0],in[1],in[2],in[3],in[4],in[5],in[6],in[7]};
    */
    
    // Solution 2

    always @(*) begin	
        for (integer i=0; i<8; i++)
            out[i] = in[7-i];
    end
    
endmodule
