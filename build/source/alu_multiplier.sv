/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module alu_multiplier (
        input wire [31:0] a,
        input wire [31:0] b,
        output reg [31:0] mul
    );
    logic [31:0] R_4e69ac4b_i;
    logic [31:0] RR_4e69ac4b_i;
    logic [31:0] R_472d6462_i;
    logic [31:0] RR_472d6462_i;
    logic [31:0] R_13ba66a5_j;
    logic [31:0] RR_13ba66a5_j;
    logic [495:0] M_fa_a;
    logic [495:0] M_fa_b;
    logic [495:0] M_fa_cin;
    logic [495:0] M_fa_s;
    logic [495:0] M_fa_cout;
    
    genvar idx_0_1467178435;
    
    generate
        for (idx_0_1467178435 = 0; idx_0_1467178435 < 496; idx_0_1467178435 = idx_0_1467178435 + 1) begin: forLoop_idx_0_1467178435
            alu_adder_rca_fa fa (
                .a(M_fa_a[idx_0_1467178435]),
                .b(M_fa_b[idx_0_1467178435]),
                .cin(M_fa_cin[idx_0_1467178435]),
                .s(M_fa_s[idx_0_1467178435]),
                .cout(M_fa_cout[idx_0_1467178435])
            );
        end
    endgenerate
    
    
    logic [8:0] current_row_fa_index;
    logic [8:0] previous_row_fa_index;
    always @* begin
        mul[1'h0] = b[1'h0] & a[1'h0];
        for (RR_4e69ac4b_i = 0; RR_4e69ac4b_i < 5'h1f; RR_4e69ac4b_i = RR_4e69ac4b_i + 1) begin
      R_4e69ac4b_i = (0) + RR_4e69ac4b_i * (1);
            M_fa_a[R_4e69ac4b_i] = a[R_4e69ac4b_i] & b[1'h1];
            M_fa_b[R_4e69ac4b_i] = a[R_4e69ac4b_i + 1'h1] & b[1'h0];
            if (R_4e69ac4b_i == 1'h0) begin
                M_fa_cin[R_4e69ac4b_i] = 1'h0;
            end else begin
                M_fa_cin[R_4e69ac4b_i] = M_fa_cout[R_4e69ac4b_i - 1'h1];
            end
        end
        previous_row_fa_index = 1'h0;
        current_row_fa_index = 5'h1f;
        mul[1'h1] = M_fa_s[previous_row_fa_index];
        for (RR_472d6462_i = 0; RR_472d6462_i < 5'h1d; RR_472d6462_i = RR_472d6462_i + 1) begin
      R_472d6462_i = (2'h2) + RR_472d6462_i * (1);
            for (RR_13ba66a5_j = 0; RR_13ba66a5_j < 6'h20 - R_472d6462_i; RR_13ba66a5_j = RR_13ba66a5_j + 1) begin
        R_13ba66a5_j = (0) + RR_13ba66a5_j * (1);
                M_fa_a[current_row_fa_index + R_13ba66a5_j] = a[R_13ba66a5_j] & b[R_472d6462_i];
                M_fa_b[current_row_fa_index + R_13ba66a5_j] = M_fa_s[previous_row_fa_index + 1'h1 + R_13ba66a5_j];
                if (R_13ba66a5_j == 1'h0) begin
                    M_fa_cin[current_row_fa_index + R_13ba66a5_j] = 1'h0;
                end else begin
                    M_fa_cin[current_row_fa_index + R_13ba66a5_j] = M_fa_cout[current_row_fa_index + R_13ba66a5_j - 1'h1];
                end
            end
            previous_row_fa_index = current_row_fa_index;
            current_row_fa_index = current_row_fa_index + 6'h20 - R_472d6462_i;
            mul[R_472d6462_i] = M_fa_s[previous_row_fa_index];
        end
        M_fa_a[9'h1ef] = a[1'h0] & b[5'h1f];
        M_fa_b[9'h1ef] = M_fa_s[9'h1ee];
        M_fa_cin[9'h1ef] = 1'h0;
        mul[5'h1f] = M_fa_s[9'h1ef];
    end
    
    
endmodule