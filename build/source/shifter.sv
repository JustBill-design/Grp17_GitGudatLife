/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module shifter (
        input wire [31:0] a,
        input wire [4:0] b,
        input wire [5:0] alufn,
        output reg [31:0] shift,
        output reg illop
    );
    logic [31:0] R_341fd489_i;
    logic [31:0] RR_341fd489_i;
    logic [31:0] R_07386ef2_i;
    logic [31:0] RR_07386ef2_i;
    logic [31:0] R_3eb96de7_i;
    logic [31:0] RR_3eb96de7_i;
    localparam logic [4:0][4:0] _MP_SHIFT_613786778 = {{5'h10, 5'h8, 5'h4, 5'h2, 5'h1}};
    logic [4:0][31:0] M_xbls_a;
    logic [4:0] M_xbls_shift;
    logic [4:0] M_xbls_pad;
    logic [4:0][31:0] M_xbls_out;
    
    genvar idx_0_613786778;
    
    generate
        for (idx_0_613786778 = 0; idx_0_613786778 < 5; idx_0_613786778 = idx_0_613786778 + 1) begin: forLoop_idx_0_613786778
            x_bit_left_shifter #(
                .SHIFT(_MP_SHIFT_613786778[idx_0_613786778])
            ) xbls (
                .a(M_xbls_a[idx_0_613786778]),
                .shift(M_xbls_shift[idx_0_613786778]),
                .pad(M_xbls_pad[idx_0_613786778]),
                .out(M_xbls_out[idx_0_613786778])
            );
        end
    endgenerate
    
    
    localparam logic [4:0][4:0] _MP_SHIFT_1077563640 = {{5'h10, 5'h8, 5'h4, 5'h2, 5'h1}};
    logic [4:0][31:0] M_xbrs_a;
    logic [4:0] M_xbrs_shift;
    logic [4:0] M_xbrs_pad;
    logic [4:0][31:0] M_xbrs_out;
    
    genvar idx_0_1077563640;
    
    generate
        for (idx_0_1077563640 = 0; idx_0_1077563640 < 5; idx_0_1077563640 = idx_0_1077563640 + 1) begin: forLoop_idx_0_1077563640
            x_bit_right_shifter #(
                .SHIFT(_MP_SHIFT_1077563640[idx_0_1077563640])
            ) xbrs (
                .a(M_xbrs_a[idx_0_1077563640]),
                .shift(M_xbrs_shift[idx_0_1077563640]),
                .pad(M_xbrs_pad[idx_0_1077563640]),
                .out(M_xbrs_out[idx_0_1077563640])
            );
        end
    endgenerate
    
    
    localparam logic [4:0][4:0] _MP_SHIFT_2007353229 = {{5'h10, 5'h8, 5'h4, 5'h2, 5'h1}};
    logic [4:0][31:0] M_xbras_a;
    logic [4:0] M_xbras_shift;
    logic [4:0] M_xbras_pad;
    logic [4:0][31:0] M_xbras_out;
    
    genvar idx_0_2007353229;
    
    generate
        for (idx_0_2007353229 = 0; idx_0_2007353229 < 5; idx_0_2007353229 = idx_0_2007353229 + 1) begin: forLoop_idx_0_2007353229
            x_bit_right_ari_shifter #(
                .SHIFT(_MP_SHIFT_2007353229[idx_0_2007353229])
            ) xbras (
                .a(M_xbras_a[idx_0_2007353229]),
                .shift(M_xbras_shift[idx_0_2007353229]),
                .pad(M_xbras_pad[idx_0_2007353229]),
                .out(M_xbras_out[idx_0_2007353229])
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
        for (RR_341fd489_i = 0; RR_341fd489_i < 3'h5; RR_341fd489_i = RR_341fd489_i + 1) begin
      R_341fd489_i = (0) + RR_341fd489_i * (1);
            if (R_341fd489_i == 1'h0) begin
                M_xbls_a[R_341fd489_i] = a;
                M_xbls_shift[R_341fd489_i] = b[R_341fd489_i];
                M_xbls_pad[R_341fd489_i] = 1'h0;
            end else begin
                M_xbls_a[R_341fd489_i] = M_xbls_out[R_341fd489_i - 1'h1];
                M_xbls_shift[R_341fd489_i] = b[R_341fd489_i];
                M_xbls_pad[R_341fd489_i] = 1'h0;
            end
        end
        for (RR_07386ef2_i = 0; RR_07386ef2_i < 3'h5; RR_07386ef2_i = RR_07386ef2_i + 1) begin
      R_07386ef2_i = (0) + RR_07386ef2_i * (1);
            if (R_07386ef2_i == 1'h0) begin
                M_xbrs_a[R_07386ef2_i] = a;
                M_xbrs_shift[R_07386ef2_i] = b[R_07386ef2_i];
                M_xbrs_pad[R_07386ef2_i] = 1'h0;
            end else begin
                M_xbrs_a[R_07386ef2_i] = M_xbrs_out[R_07386ef2_i - 1'h1];
                M_xbrs_shift[R_07386ef2_i] = b[R_07386ef2_i];
                M_xbrs_pad[R_07386ef2_i] = 1'h0;
            end
        end
        for (RR_3eb96de7_i = 0; RR_3eb96de7_i < 3'h5; RR_3eb96de7_i = RR_3eb96de7_i + 1) begin
      R_3eb96de7_i = (0) + RR_3eb96de7_i * (1);
            if (R_3eb96de7_i == 1'h0) begin
                M_xbras_a[R_3eb96de7_i] = a;
                M_xbras_shift[R_3eb96de7_i] = b[R_3eb96de7_i];
                M_xbras_pad[R_3eb96de7_i] = a[5'h1f];
            end else begin
                M_xbras_a[R_3eb96de7_i] = M_xbras_out[R_3eb96de7_i - 1'h1];
                M_xbras_shift[R_3eb96de7_i] = b[R_3eb96de7_i];
                M_xbras_pad[R_3eb96de7_i] = a[5'h1f];
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