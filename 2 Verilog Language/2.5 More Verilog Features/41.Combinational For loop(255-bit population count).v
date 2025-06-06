// Author: Ujjval Raghavendra L

module top_module( 
    input [254:0] in,
    output [7:0] out );
    reg [7:0] count;
    always@(*) begin
        count=0;
        for(integer i=0;i<255;i++) begin
            if(in[i]==1'b1)begin
                count++;
            end
            out=count;
        end
    end
    

endmodule
