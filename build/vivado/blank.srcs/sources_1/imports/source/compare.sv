/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module compare (
        input wire z,
        input wire v,
        input wire n,
        input wire [5:0] alufn,
        output reg cmp,
        output reg illop
    );
    always @* begin
        illop = 1'h0;
        
        case (alufn[2'h2:1'h1])
            2'h1: begin
                cmp = z;
            end
            2'h2: begin
                cmp = n ^ v;
            end
            2'h3: begin
                cmp = z | (n ^ v);
            end
            default: begin
                cmp = 1'h0;
                illop = 1'h1;
            end
        endcase
    end
    
    
endmodule