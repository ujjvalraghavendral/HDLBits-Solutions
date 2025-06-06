// Author: Ujjval Raghavendra L

// synthesis verilog_input_version verilog_2001
module top_module (
    input [7:0] in,
    output reg [2:0] pos );
    always @(*) begin
        casez (in[7:0])
        8'b zzzz_zzz1: pos = 0;  
        8'b zzzz_zz1z: pos = 1;  
        8'b zzzz_z1zz: pos = 2;  
        8'b zzzz_1zzz: pos = 3;  
        8'b zzz1_zzzz: pos = 4;  
        8'b zz1z_zzzz: pos = 5;  
        8'b z1zz_zzzz: pos = 6;  
        8'b 1zzz_zzzz: pos = 7;  
        default: pos = 0;
    endcase
end

endmodule
