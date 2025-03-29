/*
    This file was generated automatically by Alchitry Labs 2.0.29-BETA.
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
    logic [31:0] R_08f65025_i;
    logic [31:0] RR_08f65025_i;
    logic [31:0] R_516df6bd_i;
    logic [31:0] RR_516df6bd_i;
    logic [31:0] R_278613f7_i;
    logic [31:0] RR_278613f7_i;
    localparam logic [4:0][4:0] _MP_SHIFT_1774553852 = {{5'h10, 5'h8, 5'h4, 5'h2, 5'h1}};
    logic [4:0][31:0] M_xbls_a;
    logic [4:0] M_xbls_shift;
    logic [4:0] M_xbls_pad;
    logic [4:0][31:0] M_xbls_out;
    
    genvar idx_0_1774553852;
    
    generate
        for (idx_0_1774553852 = 0; idx_0_1774553852 < 5; idx_0_1774553852 = idx_0_1774553852 + 1) begin: forLoop_idx_0_1774553852
            alu_shifter_left #(
                .SHIFT(_MP_SHIFT_1774553852[idx_0_1774553852])
            ) xbls (
                .a(M_xbls_a[idx_0_1774553852]),
                .shift(M_xbls_shift[idx_0_1774553852]),
                .pad(M_xbls_pad[idx_0_1774553852]),
                .out(M_xbls_out[idx_0_1774553852])
            );
        end
    endgenerate
    
    
    localparam logic [4:0][4:0] _MP_SHIFT_682377928 = {{5'h10, 5'h8, 5'h4, 5'h2, 5'h1}};
    logic [4:0][31:0] M_xbrs_a;
    logic [4:0] M_xbrs_shift;
    logic [4:0] M_xbrs_pad;
    logic [4:0][31:0] M_xbrs_out;
    
    genvar idx_0_682377928;
    
    generate
        for (idx_0_682377928 = 0; idx_0_682377928 < 5; idx_0_682377928 = idx_0_682377928 + 1) begin: forLoop_idx_0_682377928
            alu_shifter_right #(
                .SHIFT(_MP_SHIFT_682377928[idx_0_682377928])
            ) xbrs (
                .a(M_xbrs_a[idx_0_682377928]),
                .shift(M_xbrs_shift[idx_0_682377928]),
                .pad(M_xbrs_pad[idx_0_682377928]),
                .out(M_xbrs_out[idx_0_682377928])
            );
        end
    endgenerate
    
    
    localparam logic [4:0][4:0] _MP_SHIFT_1817232242 = {{5'h10, 5'h8, 5'h4, 5'h2, 5'h1}};
    logic [4:0][31:0] M_xbras_a;
    logic [4:0] M_xbras_shift;
    logic [4:0] M_xbras_pad;
    logic [4:0][31:0] M_xbras_out;
    
    genvar idx_0_1817232242;
    
    generate
        for (idx_0_1817232242 = 0; idx_0_1817232242 < 5; idx_0_1817232242 = idx_0_1817232242 + 1) begin: forLoop_idx_0_1817232242
            alu_shifter_right_ari #(
                .SHIFT(_MP_SHIFT_1817232242[idx_0_1817232242])
            ) xbras (
                .a(M_xbras_a[idx_0_1817232242]),
                .shift(M_xbras_shift[idx_0_1817232242]),
                .pad(M_xbras_pad[idx_0_1817232242]),
                .out(M_xbras_out[idx_0_1817232242])
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
        for (RR_08f65025_i = 0; RR_08f65025_i < 3'h5; RR_08f65025_i = RR_08f65025_i + 1) begin
      R_08f65025_i = (0) + RR_08f65025_i * (1);
            if (R_08f65025_i == 1'h0) begin
                M_xbls_a[R_08f65025_i] = a;
                M_xbls_shift[R_08f65025_i] = b[R_08f65025_i];
                M_xbls_pad[R_08f65025_i] = 1'h0;
            end else begin
                M_xbls_a[R_08f65025_i] = M_xbls_out[R_08f65025_i - 1'h1];
                M_xbls_shift[R_08f65025_i] = b[R_08f65025_i];
                M_xbls_pad[R_08f65025_i] = 1'h0;
            end
        end
        for (RR_516df6bd_i = 0; RR_516df6bd_i < 3'h5; RR_516df6bd_i = RR_516df6bd_i + 1) begin
      R_516df6bd_i = (0) + RR_516df6bd_i * (1);
            if (R_516df6bd_i == 1'h0) begin
                M_xbrs_a[R_516df6bd_i] = a;
                M_xbrs_shift[R_516df6bd_i] = b[R_516df6bd_i];
                M_xbrs_pad[R_516df6bd_i] = 1'h0;
            end else begin
                M_xbrs_a[R_516df6bd_i] = M_xbrs_out[R_516df6bd_i - 1'h1];
                M_xbrs_shift[R_516df6bd_i] = b[R_516df6bd_i];
                M_xbrs_pad[R_516df6bd_i] = 1'h0;
            end
        end
        for (RR_278613f7_i = 0; RR_278613f7_i < 3'h5; RR_278613f7_i = RR_278613f7_i + 1) begin
      R_278613f7_i = (0) + RR_278613f7_i * (1);
            if (R_278613f7_i == 1'h0) begin
                M_xbras_a[R_278613f7_i] = a;
                M_xbras_shift[R_278613f7_i] = b[R_278613f7_i];
                M_xbras_pad[R_278613f7_i] = a[5'h1f];
            end else begin
                M_xbras_a[R_278613f7_i] = M_xbras_out[R_278613f7_i - 1'h1];
                M_xbras_shift[R_278613f7_i] = b[R_278613f7_i];
                M_xbras_pad[R_278613f7_i] = a[5'h1f];
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