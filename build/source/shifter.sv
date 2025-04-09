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
    logic [31:0] R_64f24d68_i;
    logic [31:0] RR_64f24d68_i;
    logic [31:0] R_30fc44f1_i;
    logic [31:0] RR_30fc44f1_i;
    logic [31:0] R_02b9e34a_i;
    logic [31:0] RR_02b9e34a_i;
    localparam logic [4:0][4:0] _MP_SHIFT_1937909824 = {{5'h10, 5'h8, 5'h4, 5'h2, 5'h1}};
    logic [4:0][31:0] M_xbls_a;
    logic [4:0] M_xbls_shift;
    logic [4:0] M_xbls_pad;
    logic [4:0][31:0] M_xbls_out;
    
    genvar idx_0_1937909824;
    
    generate
        for (idx_0_1937909824 = 0; idx_0_1937909824 < 5; idx_0_1937909824 = idx_0_1937909824 + 1) begin: forLoop_idx_0_1937909824
            x_bit_left_shifter #(
                .SHIFT(_MP_SHIFT_1937909824[idx_0_1937909824])
            ) xbls (
                .a(M_xbls_a[idx_0_1937909824]),
                .shift(M_xbls_shift[idx_0_1937909824]),
                .pad(M_xbls_pad[idx_0_1937909824]),
                .out(M_xbls_out[idx_0_1937909824])
            );
        end
    endgenerate
    
    
    localparam logic [4:0][4:0] _MP_SHIFT_1264982592 = {{5'h10, 5'h8, 5'h4, 5'h2, 5'h1}};
    logic [4:0][31:0] M_xbrs_a;
    logic [4:0] M_xbrs_shift;
    logic [4:0] M_xbrs_pad;
    logic [4:0][31:0] M_xbrs_out;
    
    genvar idx_0_1264982592;
    
    generate
        for (idx_0_1264982592 = 0; idx_0_1264982592 < 5; idx_0_1264982592 = idx_0_1264982592 + 1) begin: forLoop_idx_0_1264982592
            x_bit_right_shifter #(
                .SHIFT(_MP_SHIFT_1264982592[idx_0_1264982592])
            ) xbrs (
                .a(M_xbrs_a[idx_0_1264982592]),
                .shift(M_xbrs_shift[idx_0_1264982592]),
                .pad(M_xbrs_pad[idx_0_1264982592]),
                .out(M_xbrs_out[idx_0_1264982592])
            );
        end
    endgenerate
    
    
    localparam logic [4:0][4:0] _MP_SHIFT_483407105 = {{5'h10, 5'h8, 5'h4, 5'h2, 5'h1}};
    logic [4:0][31:0] M_xbras_a;
    logic [4:0] M_xbras_shift;
    logic [4:0] M_xbras_pad;
    logic [4:0][31:0] M_xbras_out;
    
    genvar idx_0_483407105;
    
    generate
        for (idx_0_483407105 = 0; idx_0_483407105 < 5; idx_0_483407105 = idx_0_483407105 + 1) begin: forLoop_idx_0_483407105
            x_bit_right_ari_shifter #(
                .SHIFT(_MP_SHIFT_483407105[idx_0_483407105])
            ) xbras (
                .a(M_xbras_a[idx_0_483407105]),
                .shift(M_xbras_shift[idx_0_483407105]),
                .pad(M_xbras_pad[idx_0_483407105]),
                .out(M_xbras_out[idx_0_483407105])
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
        for (RR_64f24d68_i = 0; RR_64f24d68_i < 3'h5; RR_64f24d68_i = RR_64f24d68_i + 1) begin
      R_64f24d68_i = (0) + RR_64f24d68_i * (1);
            if (R_64f24d68_i == 1'h0) begin
                M_xbls_a[R_64f24d68_i] = a;
                M_xbls_shift[R_64f24d68_i] = b[R_64f24d68_i];
                M_xbls_pad[R_64f24d68_i] = 1'h0;
            end else begin
                M_xbls_a[R_64f24d68_i] = M_xbls_out[R_64f24d68_i - 1'h1];
                M_xbls_shift[R_64f24d68_i] = b[R_64f24d68_i];
                M_xbls_pad[R_64f24d68_i] = 1'h0;
            end
        end
        for (RR_30fc44f1_i = 0; RR_30fc44f1_i < 3'h5; RR_30fc44f1_i = RR_30fc44f1_i + 1) begin
      R_30fc44f1_i = (0) + RR_30fc44f1_i * (1);
            if (R_30fc44f1_i == 1'h0) begin
                M_xbrs_a[R_30fc44f1_i] = a;
                M_xbrs_shift[R_30fc44f1_i] = b[R_30fc44f1_i];
                M_xbrs_pad[R_30fc44f1_i] = 1'h0;
            end else begin
                M_xbrs_a[R_30fc44f1_i] = M_xbrs_out[R_30fc44f1_i - 1'h1];
                M_xbrs_shift[R_30fc44f1_i] = b[R_30fc44f1_i];
                M_xbrs_pad[R_30fc44f1_i] = 1'h0;
            end
        end
        for (RR_02b9e34a_i = 0; RR_02b9e34a_i < 3'h5; RR_02b9e34a_i = RR_02b9e34a_i + 1) begin
      R_02b9e34a_i = (0) + RR_02b9e34a_i * (1);
            if (R_02b9e34a_i == 1'h0) begin
                M_xbras_a[R_02b9e34a_i] = a;
                M_xbras_shift[R_02b9e34a_i] = b[R_02b9e34a_i];
                M_xbras_pad[R_02b9e34a_i] = a[5'h1f];
            end else begin
                M_xbras_a[R_02b9e34a_i] = M_xbras_out[R_02b9e34a_i - 1'h1];
                M_xbras_shift[R_02b9e34a_i] = b[R_02b9e34a_i];
                M_xbras_pad[R_02b9e34a_i] = a[5'h1f];
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