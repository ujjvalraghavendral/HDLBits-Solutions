// Author: Ujjval Raghavendra L

module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );

    assign {w,x,y,z} = {{a,b[4:2]},{b[1:0],c,d[4:4]},{d[3:0],e[4:1]},{e[0:0],f[4:0],2'b11}};

endmodule
