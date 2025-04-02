/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module alu_shifter_left #(
        parameter SHIFT = 4'h8
    ) (
        input wire [31:0] a,
        input wire shift,
        input wire pad,
        output reg [31:0] out
    );
    logic [31:0] R_703569a7_i;
    logic [31:0] RR_703569a7_i;
    logic [31:0] M_mux_32_s0;
    logic [31:0][1:0] M_mux_32_in;
    logic [31:0] M_mux_32_out;
    
    genvar idx_0_1071071870;
    
    generate
        for (idx_0_1071071870 = 0; idx_0_1071071870 < 32; idx_0_1071071870 = idx_0_1071071870 + 1) begin: forLoop_idx_0_1071071870
            alu_shifter_mux2 mux_32 (
                .s0(M_mux_32_s0[idx_0_1071071870]),
                .in(M_mux_32_in[idx_0_1071071870]),
                .out(M_mux_32_out[idx_0_1071071870])
            );
        end
    endgenerate
    
    
    logic [31:0] shifted_bits;
    always @* begin
        shifted_bits = {a[5'h1f - SHIFT:1'h0], {SHIFT{pad}}};
        M_mux_32_s0 = {6'h20{shift}};
        for (RR_703569a7_i = 0; RR_703569a7_i < 6'h20; RR_703569a7_i = RR_703569a7_i + 1) begin
      R_703569a7_i = (0) + RR_703569a7_i * (1);
            M_mux_32_in[R_703569a7_i][1'h0] = a[R_703569a7_i];
            M_mux_32_in[R_703569a7_i][1'h1] = shifted_bits[R_703569a7_i];
        end
        out = M_mux_32_out;
    end
    
    
endmodule