// Author: Ujjval Raghavendra L

module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] sum1,sum0;
    wire coutl;
    add16 in1(.a(a[15:0]),.b(b[15:0]),.cin(1'b0),.sum(sum[15:0]),.cout(coutl));
    add16 in2(.a(a[31:16]),.b(b[31:16]),.cin(1'b0),.sum(sum0),.cout());
    add16 in3(.a(a[31:16]),.b(b[31:16]),.cin(1'b1),.sum(sum1),.cout());

    assign sum[31:16]= coutl? sum1:sum0;

endmodule
