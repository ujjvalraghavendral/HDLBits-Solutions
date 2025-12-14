// Author: Ujjval Raghavendra L

module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);
    
    reg [31:0] prev_in;
    
    always@(posedge clk)
        begin
            if(reset)
            out<=0;
            else
                out     <= out | (prev_in & ~in);
            	prev_in <= in;
            
        end

endmodule
