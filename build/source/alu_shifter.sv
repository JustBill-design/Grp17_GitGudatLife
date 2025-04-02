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
    logic [31:0] R_2e6cfaaf_i;
    logic [31:0] RR_2e6cfaaf_i;
    logic [31:0] R_5b17ffc4_i;
    logic [31:0] RR_5b17ffc4_i;
    logic [31:0] R_431ac228_i;
    logic [31:0] RR_431ac228_i;
    localparam logic [4:0][4:0] _MP_SHIFT_49952004 = {{5'h10, 5'h8, 5'h4, 5'h2, 5'h1}};
    logic [4:0][31:0] M_xbls_a;
    logic [4:0] M_xbls_shift;
    logic [4:0] M_xbls_pad;
    logic [4:0][31:0] M_xbls_out;
    
    genvar idx_0_49952004;
    
    generate
        for (idx_0_49952004 = 0; idx_0_49952004 < 5; idx_0_49952004 = idx_0_49952004 + 1) begin: forLoop_idx_0_49952004
            alu_shifter_left #(
                .SHIFT(_MP_SHIFT_49952004[idx_0_49952004])
            ) xbls (
                .a(M_xbls_a[idx_0_49952004]),
                .shift(M_xbls_shift[idx_0_49952004]),
                .pad(M_xbls_pad[idx_0_49952004]),
                .out(M_xbls_out[idx_0_49952004])
            );
        end
    endgenerate
    
    
    localparam logic [4:0][4:0] _MP_SHIFT_2091451577 = {{5'h10, 5'h8, 5'h4, 5'h2, 5'h1}};
    logic [4:0][31:0] M_xbrs_a;
    logic [4:0] M_xbrs_shift;
    logic [4:0] M_xbrs_pad;
    logic [4:0][31:0] M_xbrs_out;
    
    genvar idx_0_2091451577;
    
    generate
        for (idx_0_2091451577 = 0; idx_0_2091451577 < 5; idx_0_2091451577 = idx_0_2091451577 + 1) begin: forLoop_idx_0_2091451577
            alu_shifter_right #(
                .SHIFT(_MP_SHIFT_2091451577[idx_0_2091451577])
            ) xbrs (
                .a(M_xbrs_a[idx_0_2091451577]),
                .shift(M_xbrs_shift[idx_0_2091451577]),
                .pad(M_xbrs_pad[idx_0_2091451577]),
                .out(M_xbrs_out[idx_0_2091451577])
            );
        end
    endgenerate
    
    
    localparam logic [4:0][4:0] _MP_SHIFT_758292223 = {{5'h10, 5'h8, 5'h4, 5'h2, 5'h1}};
    logic [4:0][31:0] M_xbras_a;
    logic [4:0] M_xbras_shift;
    logic [4:0] M_xbras_pad;
    logic [4:0][31:0] M_xbras_out;
    
    genvar idx_0_758292223;
    
    generate
        for (idx_0_758292223 = 0; idx_0_758292223 < 5; idx_0_758292223 = idx_0_758292223 + 1) begin: forLoop_idx_0_758292223
            alu_shifter_right_ari #(
                .SHIFT(_MP_SHIFT_758292223[idx_0_758292223])
            ) xbras (
                .a(M_xbras_a[idx_0_758292223]),
                .shift(M_xbras_shift[idx_0_758292223]),
                .pad(M_xbras_pad[idx_0_758292223]),
                .out(M_xbras_out[idx_0_758292223])
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
        for (RR_2e6cfaaf_i = 0; RR_2e6cfaaf_i < 3'h5; RR_2e6cfaaf_i = RR_2e6cfaaf_i + 1) begin
      R_2e6cfaaf_i = (0) + RR_2e6cfaaf_i * (1);
            if (R_2e6cfaaf_i == 1'h0) begin
                M_xbls_a[R_2e6cfaaf_i] = a;
                M_xbls_shift[R_2e6cfaaf_i] = b[R_2e6cfaaf_i];
                M_xbls_pad[R_2e6cfaaf_i] = 1'h0;
            end else begin
                M_xbls_a[R_2e6cfaaf_i] = M_xbls_out[R_2e6cfaaf_i - 1'h1];
                M_xbls_shift[R_2e6cfaaf_i] = b[R_2e6cfaaf_i];
                M_xbls_pad[R_2e6cfaaf_i] = 1'h0;
            end
        end
        for (RR_5b17ffc4_i = 0; RR_5b17ffc4_i < 3'h5; RR_5b17ffc4_i = RR_5b17ffc4_i + 1) begin
      R_5b17ffc4_i = (0) + RR_5b17ffc4_i * (1);
            if (R_5b17ffc4_i == 1'h0) begin
                M_xbrs_a[R_5b17ffc4_i] = a;
                M_xbrs_shift[R_5b17ffc4_i] = b[R_5b17ffc4_i];
                M_xbrs_pad[R_5b17ffc4_i] = 1'h0;
            end else begin
                M_xbrs_a[R_5b17ffc4_i] = M_xbrs_out[R_5b17ffc4_i - 1'h1];
                M_xbrs_shift[R_5b17ffc4_i] = b[R_5b17ffc4_i];
                M_xbrs_pad[R_5b17ffc4_i] = 1'h0;
            end
        end
        for (RR_431ac228_i = 0; RR_431ac228_i < 3'h5; RR_431ac228_i = RR_431ac228_i + 1) begin
      R_431ac228_i = (0) + RR_431ac228_i * (1);
            if (R_431ac228_i == 1'h0) begin
                M_xbras_a[R_431ac228_i] = a;
                M_xbras_shift[R_431ac228_i] = b[R_431ac228_i];
                M_xbras_pad[R_431ac228_i] = a[5'h1f];
            end else begin
                M_xbras_a[R_431ac228_i] = M_xbras_out[R_431ac228_i - 1'h1];
                M_xbras_shift[R_431ac228_i] = b[R_431ac228_i];
                M_xbras_pad[R_431ac228_i] = a[5'h1f];
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