/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module alu_shifter (
        input wire [31:0] a,
        input wire [4:0] b,
        input wire [5:0] alufn,
        output reg [31:0] shift,
        output reg illop
    );
    logic [31:0] R_4f868867_i;
    logic [31:0] RR_4f868867_i;
    logic [31:0] R_7c513388_i;
    logic [31:0] RR_7c513388_i;
    logic [31:0] R_42b37f48_i;
    logic [31:0] RR_42b37f48_i;
    localparam logic [4:0][4:0] _MP_SHIFT_843769583 = {{5'h10, 5'h8, 5'h4, 5'h2, 5'h1}};
    logic [4:0][31:0] M_xbls_a;
    logic [4:0] M_xbls_shift;
    logic [4:0] M_xbls_pad;
    logic [4:0][31:0] M_xbls_out;
    
    genvar idx_0_843769583;
    
    generate
        for (idx_0_843769583 = 0; idx_0_843769583 < 5; idx_0_843769583 = idx_0_843769583 + 1) begin: forLoop_idx_0_843769583
            alu_shifter_left #(
                .SHIFT(_MP_SHIFT_843769583[idx_0_843769583])
            ) xbls (
                .a(M_xbls_a[idx_0_843769583]),
                .shift(M_xbls_shift[idx_0_843769583]),
                .pad(M_xbls_pad[idx_0_843769583]),
                .out(M_xbls_out[idx_0_843769583])
            );
        end
    endgenerate
    
    
    localparam logic [4:0][4:0] _MP_SHIFT_2055286995 = {{5'h10, 5'h8, 5'h4, 5'h2, 5'h1}};
    logic [4:0][31:0] M_xbrs_a;
    logic [4:0] M_xbrs_shift;
    logic [4:0] M_xbrs_pad;
    logic [4:0][31:0] M_xbrs_out;
    
    genvar idx_0_2055286995;
    
    generate
        for (idx_0_2055286995 = 0; idx_0_2055286995 < 5; idx_0_2055286995 = idx_0_2055286995 + 1) begin: forLoop_idx_0_2055286995
            alu_shifter_right #(
                .SHIFT(_MP_SHIFT_2055286995[idx_0_2055286995])
            ) xbrs (
                .a(M_xbrs_a[idx_0_2055286995]),
                .shift(M_xbrs_shift[idx_0_2055286995]),
                .pad(M_xbrs_pad[idx_0_2055286995]),
                .out(M_xbrs_out[idx_0_2055286995])
            );
        end
    endgenerate
    
    
    localparam logic [4:0][4:0] _MP_SHIFT_1151930805 = {{5'h10, 5'h8, 5'h4, 5'h2, 5'h1}};
    logic [4:0][31:0] M_xbras_a;
    logic [4:0] M_xbras_shift;
    logic [4:0] M_xbras_pad;
    logic [4:0][31:0] M_xbras_out;
    
    genvar idx_0_1151930805;
    
    generate
        for (idx_0_1151930805 = 0; idx_0_1151930805 < 5; idx_0_1151930805 = idx_0_1151930805 + 1) begin: forLoop_idx_0_1151930805
            alu_shifter_right_ari #(
                .SHIFT(_MP_SHIFT_1151930805[idx_0_1151930805])
            ) xbras (
                .a(M_xbras_a[idx_0_1151930805]),
                .shift(M_xbras_shift[idx_0_1151930805]),
                .pad(M_xbras_pad[idx_0_1151930805]),
                .out(M_xbras_out[idx_0_1151930805])
            );
        end
    endgenerate
    
    
    always @* begin
        M_xbls_a = {{32'h0, 32'h0, 32'h0, 32'h0, 32'h0}};
        M_xbls_shift = 1'h0;
        M_xbls_pad = 1'h0;
        M_xbrs_a = {{32'h0, 32'h0, 32'h0, 32'h0, 32'h0}};
        M_xbrs_shift = 1'h0;
        M_xbrs_pad = 1'h0;
        M_xbras_a = {{32'h0, 32'h0, 32'h0, 32'h0, 32'h0}};
        M_xbras_shift = 1'h0;
        M_xbras_pad = 1'h0;
        for (RR_4f868867_i = 0; RR_4f868867_i < 3'h5; RR_4f868867_i = RR_4f868867_i + 1) begin
      R_4f868867_i = (0) + RR_4f868867_i * (1);
            if (R_4f868867_i == 1'h0) begin
                M_xbls_a[R_4f868867_i] = a;
                M_xbls_shift[R_4f868867_i] = b[R_4f868867_i];
                M_xbls_pad[R_4f868867_i] = 1'h0;
            end else begin
                M_xbls_a[R_4f868867_i] = M_xbls_out[R_4f868867_i - 1'h1];
                M_xbls_shift[R_4f868867_i] = b[R_4f868867_i];
                M_xbls_pad[R_4f868867_i] = 1'h0;
            end
        end
        for (RR_7c513388_i = 0; RR_7c513388_i < 3'h5; RR_7c513388_i = RR_7c513388_i + 1) begin
      R_7c513388_i = (0) + RR_7c513388_i * (1);
            if (R_7c513388_i == 1'h0) begin
                M_xbrs_a[R_7c513388_i] = a;
                M_xbrs_shift[R_7c513388_i] = b[R_7c513388_i];
                M_xbrs_pad[R_7c513388_i] = 1'h0;
            end else begin
                M_xbrs_a[R_7c513388_i] = M_xbrs_out[R_7c513388_i - 1'h1];
                M_xbrs_shift[R_7c513388_i] = b[R_7c513388_i];
                M_xbrs_pad[R_7c513388_i] = 1'h0;
            end
        end
        for (RR_42b37f48_i = 0; RR_42b37f48_i < 3'h5; RR_42b37f48_i = RR_42b37f48_i + 1) begin
      R_42b37f48_i = (0) + RR_42b37f48_i * (1);
            if (R_42b37f48_i == 1'h0) begin
                M_xbras_a[R_42b37f48_i] = a;
                M_xbras_shift[R_42b37f48_i] = b[R_42b37f48_i];
                M_xbras_pad[R_42b37f48_i] = a[5'h1f];
            end else begin
                M_xbras_a[R_42b37f48_i] = M_xbras_out[R_42b37f48_i - 1'h1];
                M_xbras_shift[R_42b37f48_i] = b[R_42b37f48_i];
                M_xbras_pad[R_42b37f48_i] = a[5'h1f];
            end
        end
        illop = 1'h0;
        
        case (alufn[1'h1:1'h0])
            2'h0: begin
                shift = M_xbls_out[3'h4];
            end
            2'h1: begin
                shift = M_xbrs_out[3'h4];
            end
            2'h3: begin
                shift = M_xbras_out[3'h4];
            end
            default: begin
                shift = 1'h0;
                illop = 1'h1;
            end
        endcase
    end
    
    
endmodule