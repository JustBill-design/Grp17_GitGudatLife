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
    logic [31:0] R_736441e5_i;
    logic [31:0] RR_736441e5_i;
    logic [31:0] R_184715d0_i;
    logic [31:0] RR_184715d0_i;
    logic [31:0] R_4443b089_i;
    logic [31:0] RR_4443b089_i;
    localparam logic [4:0][4:0] _MP_SHIFT_443703996 = {{5'h10, 5'h8, 5'h4, 5'h2, 5'h1}};
    logic [4:0][31:0] M_xbls_a;
    logic [4:0] M_xbls_shift;
    logic [4:0] M_xbls_pad;
    logic [4:0][31:0] M_xbls_out;
    
    genvar idx_0_443703996;
    
    generate
        for (idx_0_443703996 = 0; idx_0_443703996 < 5; idx_0_443703996 = idx_0_443703996 + 1) begin: forLoop_idx_0_443703996
            x_bit_left_shifter #(
                .SHIFT(_MP_SHIFT_443703996[idx_0_443703996])
            ) xbls (
                .a(M_xbls_a[idx_0_443703996]),
                .shift(M_xbls_shift[idx_0_443703996]),
                .pad(M_xbls_pad[idx_0_443703996]),
                .out(M_xbls_out[idx_0_443703996])
            );
        end
    endgenerate
    
    
    localparam logic [4:0][4:0] _MP_SHIFT_1306550698 = {{5'h10, 5'h8, 5'h4, 5'h2, 5'h1}};
    logic [4:0][31:0] M_xbrs_a;
    logic [4:0] M_xbrs_shift;
    logic [4:0] M_xbrs_pad;
    logic [4:0][31:0] M_xbrs_out;
    
    genvar idx_0_1306550698;
    
    generate
        for (idx_0_1306550698 = 0; idx_0_1306550698 < 5; idx_0_1306550698 = idx_0_1306550698 + 1) begin: forLoop_idx_0_1306550698
            x_bit_right_shifter #(
                .SHIFT(_MP_SHIFT_1306550698[idx_0_1306550698])
            ) xbrs (
                .a(M_xbrs_a[idx_0_1306550698]),
                .shift(M_xbrs_shift[idx_0_1306550698]),
                .pad(M_xbrs_pad[idx_0_1306550698]),
                .out(M_xbrs_out[idx_0_1306550698])
            );
        end
    endgenerate
    
    
    localparam logic [4:0][4:0] _MP_SHIFT_25768899 = {{5'h10, 5'h8, 5'h4, 5'h2, 5'h1}};
    logic [4:0][31:0] M_xbras_a;
    logic [4:0] M_xbras_shift;
    logic [4:0] M_xbras_pad;
    logic [4:0][31:0] M_xbras_out;
    
    genvar idx_0_25768899;
    
    generate
        for (idx_0_25768899 = 0; idx_0_25768899 < 5; idx_0_25768899 = idx_0_25768899 + 1) begin: forLoop_idx_0_25768899
            x_bit_right_ari_shifter #(
                .SHIFT(_MP_SHIFT_25768899[idx_0_25768899])
            ) xbras (
                .a(M_xbras_a[idx_0_25768899]),
                .shift(M_xbras_shift[idx_0_25768899]),
                .pad(M_xbras_pad[idx_0_25768899]),
                .out(M_xbras_out[idx_0_25768899])
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
        for (RR_736441e5_i = 0; RR_736441e5_i < 3'h5; RR_736441e5_i = RR_736441e5_i + 1) begin
      R_736441e5_i = (0) + RR_736441e5_i * (1);
            if (R_736441e5_i == 1'h0) begin
                M_xbls_a[R_736441e5_i] = a;
                M_xbls_shift[R_736441e5_i] = b[R_736441e5_i];
                M_xbls_pad[R_736441e5_i] = 1'h0;
            end else begin
                M_xbls_a[R_736441e5_i] = M_xbls_out[R_736441e5_i - 1'h1];
                M_xbls_shift[R_736441e5_i] = b[R_736441e5_i];
                M_xbls_pad[R_736441e5_i] = 1'h0;
            end
        end
        for (RR_184715d0_i = 0; RR_184715d0_i < 3'h5; RR_184715d0_i = RR_184715d0_i + 1) begin
      R_184715d0_i = (0) + RR_184715d0_i * (1);
            if (R_184715d0_i == 1'h0) begin
                M_xbrs_a[R_184715d0_i] = a;
                M_xbrs_shift[R_184715d0_i] = b[R_184715d0_i];
                M_xbrs_pad[R_184715d0_i] = 1'h0;
            end else begin
                M_xbrs_a[R_184715d0_i] = M_xbrs_out[R_184715d0_i - 1'h1];
                M_xbrs_shift[R_184715d0_i] = b[R_184715d0_i];
                M_xbrs_pad[R_184715d0_i] = 1'h0;
            end
        end
        for (RR_4443b089_i = 0; RR_4443b089_i < 3'h5; RR_4443b089_i = RR_4443b089_i + 1) begin
      R_4443b089_i = (0) + RR_4443b089_i * (1);
            if (R_4443b089_i == 1'h0) begin
                M_xbras_a[R_4443b089_i] = a;
                M_xbras_shift[R_4443b089_i] = b[R_4443b089_i];
                M_xbras_pad[R_4443b089_i] = a[5'h1f];
            end else begin
                M_xbras_a[R_4443b089_i] = M_xbras_out[R_4443b089_i - 1'h1];
                M_xbras_shift[R_4443b089_i] = b[R_4443b089_i];
                M_xbras_pad[R_4443b089_i] = a[5'h1f];
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