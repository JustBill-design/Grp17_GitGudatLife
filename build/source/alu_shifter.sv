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
    logic [31:0] R_6408246a_i;
    logic [31:0] RR_6408246a_i;
    logic [31:0] R_2d70a90c_i;
    logic [31:0] RR_2d70a90c_i;
    logic [31:0] R_789467a7_i;
    logic [31:0] RR_789467a7_i;
    localparam logic [4:0][4:0] _MP_SHIFT_186993120 = {{5'h10, 5'h8, 5'h4, 5'h2, 5'h1}};
    logic [4:0][31:0] M_xbls_a;
    logic [4:0] M_xbls_shift;
    logic [4:0] M_xbls_pad;
    logic [4:0][31:0] M_xbls_out;
    
    genvar idx_0_186993120;
    
    generate
        for (idx_0_186993120 = 0; idx_0_186993120 < 5; idx_0_186993120 = idx_0_186993120 + 1) begin: forLoop_idx_0_186993120
            alu_shifter_left #(
                .SHIFT(_MP_SHIFT_186993120[idx_0_186993120])
            ) xbls (
                .a(M_xbls_a[idx_0_186993120]),
                .shift(M_xbls_shift[idx_0_186993120]),
                .pad(M_xbls_pad[idx_0_186993120]),
                .out(M_xbls_out[idx_0_186993120])
            );
        end
    endgenerate
    
    
    localparam logic [4:0][4:0] _MP_SHIFT_1949331656 = {{5'h10, 5'h8, 5'h4, 5'h2, 5'h1}};
    logic [4:0][31:0] M_xbrs_a;
    logic [4:0] M_xbrs_shift;
    logic [4:0] M_xbrs_pad;
    logic [4:0][31:0] M_xbrs_out;
    
    genvar idx_0_1949331656;
    
    generate
        for (idx_0_1949331656 = 0; idx_0_1949331656 < 5; idx_0_1949331656 = idx_0_1949331656 + 1) begin: forLoop_idx_0_1949331656
            alu_shifter_right #(
                .SHIFT(_MP_SHIFT_1949331656[idx_0_1949331656])
            ) xbrs (
                .a(M_xbrs_a[idx_0_1949331656]),
                .shift(M_xbrs_shift[idx_0_1949331656]),
                .pad(M_xbrs_pad[idx_0_1949331656]),
                .out(M_xbrs_out[idx_0_1949331656])
            );
        end
    endgenerate
    
    
    localparam logic [4:0][4:0] _MP_SHIFT_2094365664 = {{5'h10, 5'h8, 5'h4, 5'h2, 5'h1}};
    logic [4:0][31:0] M_xbras_a;
    logic [4:0] M_xbras_shift;
    logic [4:0] M_xbras_pad;
    logic [4:0][31:0] M_xbras_out;
    
    genvar idx_0_2094365664;
    
    generate
        for (idx_0_2094365664 = 0; idx_0_2094365664 < 5; idx_0_2094365664 = idx_0_2094365664 + 1) begin: forLoop_idx_0_2094365664
            alu_shifter_right_ari #(
                .SHIFT(_MP_SHIFT_2094365664[idx_0_2094365664])
            ) xbras (
                .a(M_xbras_a[idx_0_2094365664]),
                .shift(M_xbras_shift[idx_0_2094365664]),
                .pad(M_xbras_pad[idx_0_2094365664]),
                .out(M_xbras_out[idx_0_2094365664])
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
        for (RR_6408246a_i = 0; RR_6408246a_i < 3'h5; RR_6408246a_i = RR_6408246a_i + 1) begin
      R_6408246a_i = (0) + RR_6408246a_i * (1);
            if (R_6408246a_i == 1'h0) begin
                M_xbls_a[R_6408246a_i] = a;
                M_xbls_shift[R_6408246a_i] = b[R_6408246a_i];
                M_xbls_pad[R_6408246a_i] = 1'h0;
            end else begin
                M_xbls_a[R_6408246a_i] = M_xbls_out[R_6408246a_i - 1'h1];
                M_xbls_shift[R_6408246a_i] = b[R_6408246a_i];
                M_xbls_pad[R_6408246a_i] = 1'h0;
            end
        end
        for (RR_2d70a90c_i = 0; RR_2d70a90c_i < 3'h5; RR_2d70a90c_i = RR_2d70a90c_i + 1) begin
      R_2d70a90c_i = (0) + RR_2d70a90c_i * (1);
            if (R_2d70a90c_i == 1'h0) begin
                M_xbrs_a[R_2d70a90c_i] = a;
                M_xbrs_shift[R_2d70a90c_i] = b[R_2d70a90c_i];
                M_xbrs_pad[R_2d70a90c_i] = 1'h0;
            end else begin
                M_xbrs_a[R_2d70a90c_i] = M_xbrs_out[R_2d70a90c_i - 1'h1];
                M_xbrs_shift[R_2d70a90c_i] = b[R_2d70a90c_i];
                M_xbrs_pad[R_2d70a90c_i] = 1'h0;
            end
        end
        for (RR_789467a7_i = 0; RR_789467a7_i < 3'h5; RR_789467a7_i = RR_789467a7_i + 1) begin
      R_789467a7_i = (0) + RR_789467a7_i * (1);
            if (R_789467a7_i == 1'h0) begin
                M_xbras_a[R_789467a7_i] = a;
                M_xbras_shift[R_789467a7_i] = b[R_789467a7_i];
                M_xbras_pad[R_789467a7_i] = a[5'h1f];
            end else begin
                M_xbras_a[R_789467a7_i] = M_xbras_out[R_789467a7_i - 1'h1];
                M_xbras_shift[R_789467a7_i] = b[R_789467a7_i];
                M_xbras_pad[R_789467a7_i] = a[5'h1f];
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