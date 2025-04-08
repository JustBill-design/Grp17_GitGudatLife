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
    logic [31:0] R_695e803f_i;
    logic [31:0] RR_695e803f_i;
    logic [31:0] R_389ab958_i;
    logic [31:0] RR_389ab958_i;
    logic [31:0] R_1ba9507a_i;
    logic [31:0] RR_1ba9507a_i;
    localparam logic [4:0][4:0] _MP_SHIFT_1898103711 = {{5'h10, 5'h8, 5'h4, 5'h2, 5'h1}};
    logic [4:0][31:0] M_xbls_a;
    logic [4:0] M_xbls_shift;
    logic [4:0] M_xbls_pad;
    logic [4:0][31:0] M_xbls_out;
    
    genvar idx_0_1898103711;
    
    generate
        for (idx_0_1898103711 = 0; idx_0_1898103711 < 5; idx_0_1898103711 = idx_0_1898103711 + 1) begin: forLoop_idx_0_1898103711
            alu_shifter_left #(
                .SHIFT(_MP_SHIFT_1898103711[idx_0_1898103711])
            ) xbls (
                .a(M_xbls_a[idx_0_1898103711]),
                .shift(M_xbls_shift[idx_0_1898103711]),
                .pad(M_xbls_pad[idx_0_1898103711]),
                .out(M_xbls_out[idx_0_1898103711])
            );
        end
    endgenerate
    
    
    localparam logic [4:0][4:0] _MP_SHIFT_1038764269 = {{5'h10, 5'h8, 5'h4, 5'h2, 5'h1}};
    logic [4:0][31:0] M_xbrs_a;
    logic [4:0] M_xbrs_shift;
    logic [4:0] M_xbrs_pad;
    logic [4:0][31:0] M_xbrs_out;
    
    genvar idx_0_1038764269;
    
    generate
        for (idx_0_1038764269 = 0; idx_0_1038764269 < 5; idx_0_1038764269 = idx_0_1038764269 + 1) begin: forLoop_idx_0_1038764269
            alu_shifter_right #(
                .SHIFT(_MP_SHIFT_1038764269[idx_0_1038764269])
            ) xbrs (
                .a(M_xbrs_a[idx_0_1038764269]),
                .shift(M_xbrs_shift[idx_0_1038764269]),
                .pad(M_xbrs_pad[idx_0_1038764269]),
                .out(M_xbrs_out[idx_0_1038764269])
            );
        end
    endgenerate
    
    
    localparam logic [4:0][4:0] _MP_SHIFT_1690662187 = {{5'h10, 5'h8, 5'h4, 5'h2, 5'h1}};
    logic [4:0][31:0] M_xbras_a;
    logic [4:0] M_xbras_shift;
    logic [4:0] M_xbras_pad;
    logic [4:0][31:0] M_xbras_out;
    
    genvar idx_0_1690662187;
    
    generate
        for (idx_0_1690662187 = 0; idx_0_1690662187 < 5; idx_0_1690662187 = idx_0_1690662187 + 1) begin: forLoop_idx_0_1690662187
            alu_shifter_right_ari #(
                .SHIFT(_MP_SHIFT_1690662187[idx_0_1690662187])
            ) xbras (
                .a(M_xbras_a[idx_0_1690662187]),
                .shift(M_xbras_shift[idx_0_1690662187]),
                .pad(M_xbras_pad[idx_0_1690662187]),
                .out(M_xbras_out[idx_0_1690662187])
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
        for (RR_695e803f_i = 0; RR_695e803f_i < 3'h5; RR_695e803f_i = RR_695e803f_i + 1) begin
      R_695e803f_i = (0) + RR_695e803f_i * (1);
            if (R_695e803f_i == 1'h0) begin
                M_xbls_a[R_695e803f_i] = a;
                M_xbls_shift[R_695e803f_i] = b[R_695e803f_i];
                M_xbls_pad[R_695e803f_i] = 1'h0;
            end else begin
                M_xbls_a[R_695e803f_i] = M_xbls_out[R_695e803f_i - 1'h1];
                M_xbls_shift[R_695e803f_i] = b[R_695e803f_i];
                M_xbls_pad[R_695e803f_i] = 1'h0;
            end
        end
        for (RR_389ab958_i = 0; RR_389ab958_i < 3'h5; RR_389ab958_i = RR_389ab958_i + 1) begin
      R_389ab958_i = (0) + RR_389ab958_i * (1);
            if (R_389ab958_i == 1'h0) begin
                M_xbrs_a[R_389ab958_i] = a;
                M_xbrs_shift[R_389ab958_i] = b[R_389ab958_i];
                M_xbrs_pad[R_389ab958_i] = 1'h0;
            end else begin
                M_xbrs_a[R_389ab958_i] = M_xbrs_out[R_389ab958_i - 1'h1];
                M_xbrs_shift[R_389ab958_i] = b[R_389ab958_i];
                M_xbrs_pad[R_389ab958_i] = 1'h0;
            end
        end
        for (RR_1ba9507a_i = 0; RR_1ba9507a_i < 3'h5; RR_1ba9507a_i = RR_1ba9507a_i + 1) begin
      R_1ba9507a_i = (0) + RR_1ba9507a_i * (1);
            if (R_1ba9507a_i == 1'h0) begin
                M_xbras_a[R_1ba9507a_i] = a;
                M_xbras_shift[R_1ba9507a_i] = b[R_1ba9507a_i];
                M_xbras_pad[R_1ba9507a_i] = a[5'h1f];
            end else begin
                M_xbras_a[R_1ba9507a_i] = M_xbras_out[R_1ba9507a_i - 1'h1];
                M_xbras_shift[R_1ba9507a_i] = b[R_1ba9507a_i];
                M_xbras_pad[R_1ba9507a_i] = a[5'h1f];
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