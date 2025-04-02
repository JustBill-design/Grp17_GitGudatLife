/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module alu_adder_rca #(
        parameter SIZE = 6'h20
    ) (
        input wire [(SIZE)-1:0] a,
        input wire [(SIZE)-1:0] b,
        input wire cin,
        output reg [(SIZE)-1:0] s
    );
    logic [31:0] R_3850dcff_i;
    logic [31:0] RR_3850dcff_i;
    logic [(SIZE)-1:0] M_fa_a;
    logic [(SIZE)-1:0] M_fa_b;
    logic [(SIZE)-1:0] M_fa_cin;
    logic [(SIZE)-1:0] M_fa_s;
    logic [(SIZE)-1:0] M_fa_cout;
    
    genvar idx_0_1713316436;
    
    generate
        for (idx_0_1713316436 = 0; idx_0_1713316436 < SIZE; idx_0_1713316436 = idx_0_1713316436 + 1) begin: forLoop_idx_0_1713316436
            alu_adder_rca_fa fa (
                .a(M_fa_a[idx_0_1713316436]),
                .b(M_fa_b[idx_0_1713316436]),
                .cin(M_fa_cin[idx_0_1713316436]),
                .s(M_fa_s[idx_0_1713316436]),
                .cout(M_fa_cout[idx_0_1713316436])
            );
        end
    endgenerate
    
    
    always @* begin
        M_fa_a = a;
        M_fa_b = b;
        M_fa_cin[1'h0] = cin;
        for (RR_3850dcff_i = 0; RR_3850dcff_i < SIZE - 1'h1; RR_3850dcff_i = RR_3850dcff_i + 1) begin
      R_3850dcff_i = (1'h1) + RR_3850dcff_i * (1);
            M_fa_cin[R_3850dcff_i] = M_fa_cout[R_3850dcff_i - 1'h1];
        end
        s = M_fa_s;
    end
    
    
endmodule