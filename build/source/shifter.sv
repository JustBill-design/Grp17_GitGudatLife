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
    logic [31:0] R_44f05c38_i;
    logic [31:0] RR_44f05c38_i;
    logic [31:0] R_2e25469d_i;
    logic [31:0] RR_2e25469d_i;
    logic [31:0] R_0fa37dab_i;
    logic [31:0] RR_0fa37dab_i;
    localparam logic [4:0][4:0] _MP_SHIFT_256182032 = {{5'h10, 5'h8, 5'h4, 5'h2, 5'h1}};
    logic [4:0][31:0] M_xbls_a;
    logic [4:0] M_xbls_shift;
    logic [4:0] M_xbls_pad;
    logic [4:0][31:0] M_xbls_out;
    
    genvar idx_0_256182032;
    
    generate
        for (idx_0_256182032 = 0; idx_0_256182032 < 5; idx_0_256182032 = idx_0_256182032 + 1) begin: forLoop_idx_0_256182032
            x_bit_left_shifter #(
                .SHIFT(_MP_SHIFT_256182032[idx_0_256182032])
            ) xbls (
                .a(M_xbls_a[idx_0_256182032]),
                .shift(M_xbls_shift[idx_0_256182032]),
                .pad(M_xbls_pad[idx_0_256182032]),
                .out(M_xbls_out[idx_0_256182032])
            );
        end
    endgenerate
    
    
    localparam logic [4:0][4:0] _MP_SHIFT_1504160632 = {{5'h10, 5'h8, 5'h4, 5'h2, 5'h1}};
    logic [4:0][31:0] M_xbrs_a;
    logic [4:0] M_xbrs_shift;
    logic [4:0] M_xbrs_pad;
    logic [4:0][31:0] M_xbrs_out;
    
    genvar idx_0_1504160632;
    
    generate
        for (idx_0_1504160632 = 0; idx_0_1504160632 < 5; idx_0_1504160632 = idx_0_1504160632 + 1) begin: forLoop_idx_0_1504160632
            x_bit_right_shifter #(
                .SHIFT(_MP_SHIFT_1504160632[idx_0_1504160632])
            ) xbrs (
                .a(M_xbrs_a[idx_0_1504160632]),
                .shift(M_xbrs_shift[idx_0_1504160632]),
                .pad(M_xbrs_pad[idx_0_1504160632]),
                .out(M_xbrs_out[idx_0_1504160632])
            );
        end
    endgenerate
    
    
    localparam logic [4:0][4:0] _MP_SHIFT_213796499 = {{5'h10, 5'h8, 5'h4, 5'h2, 5'h1}};
    logic [4:0][31:0] M_xbras_a;
    logic [4:0] M_xbras_shift;
    logic [4:0] M_xbras_pad;
    logic [4:0][31:0] M_xbras_out;
    
    genvar idx_0_213796499;
    
    generate
        for (idx_0_213796499 = 0; idx_0_213796499 < 5; idx_0_213796499 = idx_0_213796499 + 1) begin: forLoop_idx_0_213796499
            x_bit_right_ari_shifter #(
                .SHIFT(_MP_SHIFT_213796499[idx_0_213796499])
            ) xbras (
                .a(M_xbras_a[idx_0_213796499]),
                .shift(M_xbras_shift[idx_0_213796499]),
                .pad(M_xbras_pad[idx_0_213796499]),
                .out(M_xbras_out[idx_0_213796499])
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
        for (RR_44f05c38_i = 0; RR_44f05c38_i < 3'h5; RR_44f05c38_i = RR_44f05c38_i + 1) begin
      R_44f05c38_i = (0) + RR_44f05c38_i * (1);
            if (R_44f05c38_i == 1'h0) begin
                M_xbls_a[R_44f05c38_i] = a;
                M_xbls_shift[R_44f05c38_i] = b[R_44f05c38_i];
                M_xbls_pad[R_44f05c38_i] = 1'h0;
            end else begin
                M_xbls_a[R_44f05c38_i] = M_xbls_out[R_44f05c38_i - 1'h1];
                M_xbls_shift[R_44f05c38_i] = b[R_44f05c38_i];
                M_xbls_pad[R_44f05c38_i] = 1'h0;
            end
        end
        for (RR_2e25469d_i = 0; RR_2e25469d_i < 3'h5; RR_2e25469d_i = RR_2e25469d_i + 1) begin
      R_2e25469d_i = (0) + RR_2e25469d_i * (1);
            if (R_2e25469d_i == 1'h0) begin
                M_xbrs_a[R_2e25469d_i] = a;
                M_xbrs_shift[R_2e25469d_i] = b[R_2e25469d_i];
                M_xbrs_pad[R_2e25469d_i] = 1'h0;
            end else begin
                M_xbrs_a[R_2e25469d_i] = M_xbrs_out[R_2e25469d_i - 1'h1];
                M_xbrs_shift[R_2e25469d_i] = b[R_2e25469d_i];
                M_xbrs_pad[R_2e25469d_i] = 1'h0;
            end
        end
        for (RR_0fa37dab_i = 0; RR_0fa37dab_i < 3'h5; RR_0fa37dab_i = RR_0fa37dab_i + 1) begin
      R_0fa37dab_i = (0) + RR_0fa37dab_i * (1);
            if (R_0fa37dab_i == 1'h0) begin
                M_xbras_a[R_0fa37dab_i] = a;
                M_xbras_shift[R_0fa37dab_i] = b[R_0fa37dab_i];
                M_xbras_pad[R_0fa37dab_i] = a[5'h1f];
            end else begin
                M_xbras_a[R_0fa37dab_i] = M_xbras_out[R_0fa37dab_i - 1'h1];
                M_xbras_shift[R_0fa37dab_i] = b[R_0fa37dab_i];
                M_xbras_pad[R_0fa37dab_i] = a[5'h1f];
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