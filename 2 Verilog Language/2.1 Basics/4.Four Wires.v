// Author: Ujjval Raghavendra L

module top_module( 
    input a,b,c,
    output w,x,y,z );

//Solution 1

/*  
  
    assign w=a;
    assign x=b;
    assign y=b;
    assign z=c;
    
    */ 
 
// Solution 2

 assign {w,x,y,z} = {a,b,b,c}; 
	
endmodule
