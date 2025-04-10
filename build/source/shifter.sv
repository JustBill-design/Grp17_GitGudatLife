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
    logic [31:0] R_1943fb6c_i;
    logic [31:0] RR_1943fb6c_i;
    logic [31:0] R_1f8d4ccf_i;
    logic [31:0] RR_1f8d4ccf_i;
    logic [31:0] R_4024596d_i;
    logic [31:0] RR_4024596d_i;
    localparam logic [4:0][4:0] _MP_SHIFT_1830984251 = {{5'h10, 5'h8, 5'h4, 5'h2, 5'h1}};
    logic [4:0][31:0] M_xbls_a;
    logic [4:0] M_xbls_shift;
    logic [4:0] M_xbls_pad;
    logic [4:0][31:0] M_xbls_out;
    
    genvar idx_0_1830984251;
    
    generate
        for (idx_0_1830984251 = 0; idx_0_1830984251 < 5; idx_0_1830984251 = idx_0_1830984251 + 1) begin: forLoop_idx_0_1830984251
            x_bit_left_shifter #(
                .SHIFT(_MP_SHIFT_1830984251[idx_0_1830984251])
            ) xbls (
                .a(M_xbls_a[idx_0_1830984251]),
                .shift(M_xbls_shift[idx_0_1830984251]),
                .pad(M_xbls_pad[idx_0_1830984251]),
                .out(M_xbls_out[idx_0_1830984251])
            );
        end
    endgenerate
    
    
    localparam logic [4:0][4:0] _MP_SHIFT_1824539643 = {{5'h10, 5'h8, 5'h4, 5'h2, 5'h1}};
    logic [4:0][31:0] M_xbrs_a;
    logic [4:0] M_xbrs_shift;
    logic [4:0] M_xbrs_pad;
    logic [4:0][31:0] M_xbrs_out;
    
    genvar idx_0_1824539643;
    
    generate
        for (idx_0_1824539643 = 0; idx_0_1824539643 < 5; idx_0_1824539643 = idx_0_1824539643 + 1) begin: forLoop_idx_0_1824539643
            x_bit_right_shifter #(
                .SHIFT(_MP_SHIFT_1824539643[idx_0_1824539643])
            ) xbrs (
                .a(M_xbrs_a[idx_0_1824539643]),
                .shift(M_xbrs_shift[idx_0_1824539643]),
                .pad(M_xbrs_pad[idx_0_1824539643]),
                .out(M_xbrs_out[idx_0_1824539643])
            );
        end
    endgenerate
    
    
    localparam logic [4:0][4:0] _MP_SHIFT_1612614283 = {{5'h10, 5'h8, 5'h4, 5'h2, 5'h1}};
    logic [4:0][31:0] M_xbras_a;
    logic [4:0] M_xbras_shift;
    logic [4:0] M_xbras_pad;
    logic [4:0][31:0] M_xbras_out;
    
    genvar idx_0_1612614283;
    
    generate
        for (idx_0_1612614283 = 0; idx_0_1612614283 < 5; idx_0_1612614283 = idx_0_1612614283 + 1) begin: forLoop_idx_0_1612614283
            x_bit_right_ari_shifter #(
                .SHIFT(_MP_SHIFT_1612614283[idx_0_1612614283])
            ) xbras (
                .a(M_xbras_a[idx_0_1612614283]),
                .shift(M_xbras_shift[idx_0_1612614283]),
                .pad(M_xbras_pad[idx_0_1612614283]),
                .out(M_xbras_out[idx_0_1612614283])
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
        for (RR_1943fb6c_i = 0; RR_1943fb6c_i < 3'h5; RR_1943fb6c_i = RR_1943fb6c_i + 1) begin
      R_1943fb6c_i = (0) + RR_1943fb6c_i * (1);
            if (R_1943fb6c_i == 1'h0) begin
                M_xbls_a[R_1943fb6c_i] = a;
                M_xbls_shift[R_1943fb6c_i] = b[R_1943fb6c_i];
                M_xbls_pad[R_1943fb6c_i] = 1'h0;
            end else begin
                M_xbls_a[R_1943fb6c_i] = M_xbls_out[R_1943fb6c_i - 1'h1];
                M_xbls_shift[R_1943fb6c_i] = b[R_1943fb6c_i];
                M_xbls_pad[R_1943fb6c_i] = 1'h0;
            end
        end
        for (RR_1f8d4ccf_i = 0; RR_1f8d4ccf_i < 3'h5; RR_1f8d4ccf_i = RR_1f8d4ccf_i + 1) begin
      R_1f8d4ccf_i = (0) + RR_1f8d4ccf_i * (1);
            if (R_1f8d4ccf_i == 1'h0) begin
                M_xbrs_a[R_1f8d4ccf_i] = a;
                M_xbrs_shift[R_1f8d4ccf_i] = b[R_1f8d4ccf_i];
                M_xbrs_pad[R_1f8d4ccf_i] = 1'h0;
            end else begin
                M_xbrs_a[R_1f8d4ccf_i] = M_xbrs_out[R_1f8d4ccf_i - 1'h1];
                M_xbrs_shift[R_1f8d4ccf_i] = b[R_1f8d4ccf_i];
                M_xbrs_pad[R_1f8d4ccf_i] = 1'h0;
            end
        end
        for (RR_4024596d_i = 0; RR_4024596d_i < 3'h5; RR_4024596d_i = RR_4024596d_i + 1) begin
      R_4024596d_i = (0) + RR_4024596d_i * (1);
            if (R_4024596d_i == 1'h0) begin
                M_xbras_a[R_4024596d_i] = a;
                M_xbras_shift[R_4024596d_i] = b[R_4024596d_i];
                M_xbras_pad[R_4024596d_i] = a[5'h1f];
            end else begin
                M_xbras_a[R_4024596d_i] = M_xbras_out[R_4024596d_i - 1'h1];
                M_xbras_shift[R_4024596d_i] = b[R_4024596d_i];
                M_xbras_pad[R_4024596d_i] = a[5'h1f];
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