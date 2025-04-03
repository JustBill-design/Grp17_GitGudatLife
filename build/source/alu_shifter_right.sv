/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module alu_shifter_right #(
        parameter SHIFT = 4'h8
    ) (
        input wire [31:0] a,
        input wire shift,
        input wire pad,
        output reg [31:0] out
    );
    logic [31:0] R_78e0058b_i;
    logic [31:0] RR_78e0058b_i;
    logic [31:0] M_mux_32_s0;
    logic [31:0][1:0] M_mux_32_in;
    logic [31:0] M_mux_32_out;
    
    genvar idx_0_765753199;
    
    generate
        for (idx_0_765753199 = 0; idx_0_765753199 < 32; idx_0_765753199 = idx_0_765753199 + 1) begin: forLoop_idx_0_765753199
            alu_shifter_mux2 mux_32 (
                .s0(M_mux_32_s0[idx_0_765753199]),
                .in(M_mux_32_in[idx_0_765753199]),
                .out(M_mux_32_out[idx_0_765753199])
            );
        end
    endgenerate
    
    
    logic [31:0] shifted_bits;
    always @* begin
        shifted_bits = {{SHIFT{pad}}, a[5'h1f:SHIFT]};
        M_mux_32_s0 = {6'h20{shift}};
        for (RR_78e0058b_i = 0; RR_78e0058b_i < 6'h20; RR_78e0058b_i = RR_78e0058b_i + 1) begin
      R_78e0058b_i = (0) + RR_78e0058b_i * (1);
            M_mux_32_in[R_78e0058b_i][1'h0] = a[R_78e0058b_i];
            M_mux_32_in[R_78e0058b_i][1'h1] = shifted_bits[R_78e0058b_i];
        end
        out = M_mux_32_out;
    end
    
    
endmodule