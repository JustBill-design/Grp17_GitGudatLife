/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module multiplier (
        input wire [31:0] a,
        input wire [31:0] b,
        output reg [31:0] mul
    );
    logic [31:0] R_486eb659_i;
    logic [31:0] RR_486eb659_i;
    logic [31:0] R_0bf3afec_i;
    logic [31:0] RR_0bf3afec_i;
    logic [31:0] R_548e20a2_j;
    logic [31:0] RR_548e20a2_j;
    logic [495:0] M_fa_a;
    logic [495:0] M_fa_b;
    logic [495:0] M_fa_cin;
    logic [495:0] M_fa_s;
    logic [495:0] M_fa_cout;
    
    genvar idx_0_603114717;
    
    generate
        for (idx_0_603114717 = 0; idx_0_603114717 < 496; idx_0_603114717 = idx_0_603114717 + 1) begin: forLoop_idx_0_603114717
            fa fa (
                .a(M_fa_a[idx_0_603114717]),
                .b(M_fa_b[idx_0_603114717]),
                .cin(M_fa_cin[idx_0_603114717]),
                .s(M_fa_s[idx_0_603114717]),
                .cout(M_fa_cout[idx_0_603114717])
            );
        end
    endgenerate
    
    
    logic [8:0] current_row_fa_index;
    logic [8:0] previous_row_fa_index;
    always @* begin
        mul[1'h0] = b[1'h0] & a[1'h0];
        for (RR_486eb659_i = 0; RR_486eb659_i < 5'h1f; RR_486eb659_i = RR_486eb659_i + 1) begin
      R_486eb659_i = (0) + RR_486eb659_i * (1);
            M_fa_a[R_486eb659_i] = a[R_486eb659_i] & b[1'h1];
            M_fa_b[R_486eb659_i] = a[R_486eb659_i + 1'h1] & b[1'h0];
            if (R_486eb659_i == 1'h0) begin
                M_fa_cin[R_486eb659_i] = 1'h0;
            end else begin
                M_fa_cin[R_486eb659_i] = M_fa_cout[R_486eb659_i - 1'h1];
            end
        end
        previous_row_fa_index = 1'h0;
        current_row_fa_index = 5'h1f;
        mul[1'h1] = M_fa_s[previous_row_fa_index];
        for (RR_0bf3afec_i = 0; RR_0bf3afec_i < 5'h1d; RR_0bf3afec_i = RR_0bf3afec_i + 1) begin
      R_0bf3afec_i = (2'h2) + RR_0bf3afec_i * (1);
            for (RR_548e20a2_j = 0; RR_548e20a2_j < 6'h20 - R_0bf3afec_i; RR_548e20a2_j = RR_548e20a2_j + 1) begin
        R_548e20a2_j = (0) + RR_548e20a2_j * (1);
                M_fa_a[current_row_fa_index + R_548e20a2_j] = a[R_548e20a2_j] & b[R_0bf3afec_i];
                M_fa_b[current_row_fa_index + R_548e20a2_j] = M_fa_s[previous_row_fa_index + 1'h1 + R_548e20a2_j];
                if (R_548e20a2_j == 1'h0) begin
                    M_fa_cin[current_row_fa_index + R_548e20a2_j] = 1'h0;
                end else begin
                    M_fa_cin[current_row_fa_index + R_548e20a2_j] = M_fa_cout[current_row_fa_index + R_548e20a2_j - 1'h1];
                end
            end
            previous_row_fa_index = current_row_fa_index;
            current_row_fa_index = current_row_fa_index + 6'h20 - R_0bf3afec_i;
            mul[R_0bf3afec_i] = M_fa_s[previous_row_fa_index];
        end
        M_fa_a[9'h1ef] = a[1'h0] & b[5'h1f];
        M_fa_b[9'h1ef] = M_fa_s[9'h1ee];
        M_fa_cin[9'h1ef] = 1'h0;
        mul[5'h1f] = M_fa_s[9'h1ef];
    end
    
    
endmodule