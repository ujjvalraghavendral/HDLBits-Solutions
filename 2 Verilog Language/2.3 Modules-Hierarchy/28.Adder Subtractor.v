// Author: Ujjval Raghavendra L

module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire cout1;
    wire [31:0] b1, sum1;
    
     assign b1 = b ^ {32{sub}};
    
    add16 in1(.a(a[15:0]),.b(b1[15:0]),.cin(sub),.sum(sum1[15:0]),.cout(cout1));
    add16 in2(.a(a[31:16]),.b(b1[31:16]),.cin(cout1),.sum(sum1[31:16]),.cout());
    
    assign sum ={sum1[31:16],sum1[15:0]};
    

endmodule
