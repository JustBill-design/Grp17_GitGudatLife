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
    logic [31:0] R_744e2932_i;
    logic [31:0] RR_744e2932_i;
    logic [31:0] R_4ed52dab_i;
    logic [31:0] RR_4ed52dab_i;
    logic [31:0] R_7a2c7f75_i;
    logic [31:0] RR_7a2c7f75_i;
    localparam logic [4:0][4:0] _MP_SHIFT_349094514 = {{5'h10, 5'h8, 5'h4, 5'h2, 5'h1}};
    logic [4:0][31:0] M_xbls_a;
    logic [4:0] M_xbls_shift;
    logic [4:0] M_xbls_pad;
    logic [4:0][31:0] M_xbls_out;
    
    genvar idx_0_349094514;
    
    generate
        for (idx_0_349094514 = 0; idx_0_349094514 < 5; idx_0_349094514 = idx_0_349094514 + 1) begin: forLoop_idx_0_349094514
            alu_shifter_left #(
                .SHIFT(_MP_SHIFT_349094514[idx_0_349094514])
            ) xbls (
                .a(M_xbls_a[idx_0_349094514]),
                .shift(M_xbls_shift[idx_0_349094514]),
                .pad(M_xbls_pad[idx_0_349094514]),
                .out(M_xbls_out[idx_0_349094514])
            );
        end
    endgenerate
    
    
    localparam logic [4:0][4:0] _MP_SHIFT_410517350 = {{5'h10, 5'h8, 5'h4, 5'h2, 5'h1}};
    logic [4:0][31:0] M_xbrs_a;
    logic [4:0] M_xbrs_shift;
    logic [4:0] M_xbrs_pad;
    logic [4:0][31:0] M_xbrs_out;
    
    genvar idx_0_410517350;
    
    generate
        for (idx_0_410517350 = 0; idx_0_410517350 < 5; idx_0_410517350 = idx_0_410517350 + 1) begin: forLoop_idx_0_410517350
            alu_shifter_right #(
                .SHIFT(_MP_SHIFT_410517350[idx_0_410517350])
            ) xbrs (
                .a(M_xbrs_a[idx_0_410517350]),
                .shift(M_xbrs_shift[idx_0_410517350]),
                .pad(M_xbrs_pad[idx_0_410517350]),
                .out(M_xbrs_out[idx_0_410517350])
            );
        end
    endgenerate
    
    
    localparam logic [4:0][4:0] _MP_SHIFT_18694681 = {{5'h10, 5'h8, 5'h4, 5'h2, 5'h1}};
    logic [4:0][31:0] M_xbras_a;
    logic [4:0] M_xbras_shift;
    logic [4:0] M_xbras_pad;
    logic [4:0][31:0] M_xbras_out;
    
    genvar idx_0_18694681;
    
    generate
        for (idx_0_18694681 = 0; idx_0_18694681 < 5; idx_0_18694681 = idx_0_18694681 + 1) begin: forLoop_idx_0_18694681
            alu_shifter_right_ari #(
                .SHIFT(_MP_SHIFT_18694681[idx_0_18694681])
            ) xbras (
                .a(M_xbras_a[idx_0_18694681]),
                .shift(M_xbras_shift[idx_0_18694681]),
                .pad(M_xbras_pad[idx_0_18694681]),
                .out(M_xbras_out[idx_0_18694681])
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
        for (RR_744e2932_i = 0; RR_744e2932_i < 3'h5; RR_744e2932_i = RR_744e2932_i + 1) begin
      R_744e2932_i = (0) + RR_744e2932_i * (1);
            if (R_744e2932_i == 1'h0) begin
                M_xbls_a[R_744e2932_i] = a;
                M_xbls_shift[R_744e2932_i] = b[R_744e2932_i];
                M_xbls_pad[R_744e2932_i] = 1'h0;
            end else begin
                M_xbls_a[R_744e2932_i] = M_xbls_out[R_744e2932_i - 1'h1];
                M_xbls_shift[R_744e2932_i] = b[R_744e2932_i];
                M_xbls_pad[R_744e2932_i] = 1'h0;
            end
        end
        for (RR_4ed52dab_i = 0; RR_4ed52dab_i < 3'h5; RR_4ed52dab_i = RR_4ed52dab_i + 1) begin
      R_4ed52dab_i = (0) + RR_4ed52dab_i * (1);
            if (R_4ed52dab_i == 1'h0) begin
                M_xbrs_a[R_4ed52dab_i] = a;
                M_xbrs_shift[R_4ed52dab_i] = b[R_4ed52dab_i];
                M_xbrs_pad[R_4ed52dab_i] = 1'h0;
            end else begin
                M_xbrs_a[R_4ed52dab_i] = M_xbrs_out[R_4ed52dab_i - 1'h1];
                M_xbrs_shift[R_4ed52dab_i] = b[R_4ed52dab_i];
                M_xbrs_pad[R_4ed52dab_i] = 1'h0;
            end
        end
        for (RR_7a2c7f75_i = 0; RR_7a2c7f75_i < 3'h5; RR_7a2c7f75_i = RR_7a2c7f75_i + 1) begin
      R_7a2c7f75_i = (0) + RR_7a2c7f75_i * (1);
            if (R_7a2c7f75_i == 1'h0) begin
                M_xbras_a[R_7a2c7f75_i] = a;
                M_xbras_shift[R_7a2c7f75_i] = b[R_7a2c7f75_i];
                M_xbras_pad[R_7a2c7f75_i] = a[5'h1f];
            end else begin
                M_xbras_a[R_7a2c7f75_i] = M_xbras_out[R_7a2c7f75_i - 1'h1];
                M_xbras_shift[R_7a2c7f75_i] = b[R_7a2c7f75_i];
                M_xbras_pad[R_7a2c7f75_i] = a[5'h1f];
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