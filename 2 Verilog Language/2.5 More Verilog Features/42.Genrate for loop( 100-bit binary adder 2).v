// Author: Ujjval Raghavendra L

module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    
    always @(*) begin
        sum[0] = a[0] ^ b[0] ^ cin; // cin is a single bit and does not change so there is no declaration like cin[0]
        cout[0] = a[0] & b[0] | cin & (a[0]|b[0]); //(cin & (a[0] | b[0])) expands to (cin & a[0]) | (cin & b[0])
        for (integer i = 1; i<100; i++) begin
            sum[i] = a[i] ^ b[i] ^ cout[i-1];
            cout[i] = a[i] & b[i] | cout[i-1] & (a[i]|b[i]);
        end
    end
    
endmodule