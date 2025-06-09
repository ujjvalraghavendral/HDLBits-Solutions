// Author: Ujjval Raghavendra L

module top_module ( input [1:0] A, input [1:0] B, output z ); 
    
//NOTE:// assign z= ~(A^B);    //XNOR Logic wont work because z is 1 bit and A,B are 2bits
    
    assign z=(A==B);

endmodule
