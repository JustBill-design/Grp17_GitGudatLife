/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module rca #(
        parameter SIZE = 6'h20
    ) (
        input wire [(SIZE)-1:0] a,
        input wire [(SIZE)-1:0] b,
        input wire cin,
        output reg [(SIZE)-1:0] s
    );
    logic [31:0] R_09b92cdd_i;
    logic [31:0] RR_09b92cdd_i;
    logic [(SIZE)-1:0] M_fa_a;
    logic [(SIZE)-1:0] M_fa_b;
    logic [(SIZE)-1:0] M_fa_cin;
    logic [(SIZE)-1:0] M_fa_s;
    logic [(SIZE)-1:0] M_fa_cout;
    
    genvar idx_0_737215762;
    
    generate
        for (idx_0_737215762 = 0; idx_0_737215762 < SIZE; idx_0_737215762 = idx_0_737215762 + 1) begin: forLoop_idx_0_737215762
            fa fa (
                .a(M_fa_a[idx_0_737215762]),
                .b(M_fa_b[idx_0_737215762]),
                .cin(M_fa_cin[idx_0_737215762]),
                .s(M_fa_s[idx_0_737215762]),
                .cout(M_fa_cout[idx_0_737215762])
            );
        end
    endgenerate
    
    
    always @* begin
        M_fa_a = a;
        M_fa_b = b;
        M_fa_cin[1'h0] = cin;
        for (RR_09b92cdd_i = 0; RR_09b92cdd_i < SIZE - 1'h1; RR_09b92cdd_i = RR_09b92cdd_i + 1) begin
      R_09b92cdd_i = (1'h1) + RR_09b92cdd_i * (1);
            M_fa_cin[R_09b92cdd_i] = M_fa_cout[R_09b92cdd_i - 1'h1];
        end
        s = M_fa_s;
    end
    
    
endmodule