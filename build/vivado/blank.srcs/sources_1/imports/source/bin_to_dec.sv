/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module bin_to_dec #(
        parameter DIGITS = 3'h4,
        parameter LEADING_ZEROS = 1'h0
    ) (
        input wire [($clog2((64'(4'ha) ** (DIGITS))))-1:0] value,
        output reg [(DIGITS)-1:0][3:0] digits
    );
    logic [31:0] R_08c98a63_j;
    logic [31:0] RR_08c98a63_j;
    logic [31:0] R_3dce44b1_i;
    logic [31:0] RR_3dce44b1_i;
    logic [($bits(value))-1:0] L_21ee6d3f_remainder;
    logic L_21ee6d3f_blank;
    logic [($bits(value))-1:0] L_2e5a1fed_scale;
    logic [($bits(value))-1:0] L_6d8cc5e8_sub_value;
    always @* begin
        digits = {DIGITS{{{4'hb}}}};
        L_21ee6d3f_remainder = value;
        L_21ee6d3f_blank = !LEADING_ZEROS;
        if (value < (64'(4'ha) ** (DIGITS))) begin
            for (RR_08c98a63_j = 0; RR_08c98a63_j < DIGITS; RR_08c98a63_j = RR_08c98a63_j + 1) begin
        R_08c98a63_j = (DIGITS - 1'h1) + RR_08c98a63_j * (-2'sh1);
                L_2e5a1fed_scale = (64'(4'ha) ** (R_08c98a63_j));
                if (L_21ee6d3f_remainder < L_2e5a1fed_scale) begin
                    if (R_08c98a63_j != 1'h0 && L_21ee6d3f_blank) begin
                        digits[R_08c98a63_j] = 4'ha;
                    end else begin
                        digits[R_08c98a63_j] = 1'h0;
                    end
                end else begin
                    L_21ee6d3f_blank = 1'h0;
                    L_6d8cc5e8_sub_value = 1'h0;
                    for (RR_3dce44b1_i = 0; RR_3dce44b1_i < 4'h9; RR_3dce44b1_i = RR_3dce44b1_i + 1) begin
            R_3dce44b1_i = (4'h9) + RR_3dce44b1_i * (-2'sh1);
                        if (L_21ee6d3f_remainder < (R_3dce44b1_i + 1'h1) * L_2e5a1fed_scale) begin
                            digits[R_08c98a63_j] = R_3dce44b1_i;
                            L_6d8cc5e8_sub_value = R_3dce44b1_i * L_2e5a1fed_scale;
                        end
                    end
                    L_21ee6d3f_remainder = L_21ee6d3f_remainder - L_6d8cc5e8_sub_value;
                end
            end
        end
    end
    
    
endmodule