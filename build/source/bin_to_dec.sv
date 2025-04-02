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
    logic [31:0] R_1a4153d2_j;
    logic [31:0] RR_1a4153d2_j;
    logic [31:0] R_4d554c71_i;
    logic [31:0] RR_4d554c71_i;
    logic [($bits(value))-1:0] L_03f69c37_remainder;
    logic L_03f69c37_blank;
    logic [($bits(value))-1:0] L_09181ae0_scale;
    logic [($bits(value))-1:0] L_30ad4216_sub_value;
    always @* begin
        digits = {DIGITS{{{4'hb}}}};
        L_03f69c37_remainder = value;
        L_03f69c37_blank = !LEADING_ZEROS;
        if (value < (64'(4'ha) ** (DIGITS))) begin
            for (RR_1a4153d2_j = 0; RR_1a4153d2_j < DIGITS; RR_1a4153d2_j = RR_1a4153d2_j + 1) begin
        R_1a4153d2_j = (DIGITS - 1'h1) + RR_1a4153d2_j * (-2'sh1);
                L_09181ae0_scale = (64'(4'ha) ** (R_1a4153d2_j));
                if (L_03f69c37_remainder < L_09181ae0_scale) begin
                    if (R_1a4153d2_j != 1'h0 && L_03f69c37_blank) begin
                        digits[R_1a4153d2_j] = 4'ha;
                    end else begin
                        digits[R_1a4153d2_j] = 1'h0;
                    end
                end else begin
                    L_03f69c37_blank = 1'h0;
                    L_30ad4216_sub_value = 1'h0;
                    for (RR_4d554c71_i = 0; RR_4d554c71_i < 4'h9; RR_4d554c71_i = RR_4d554c71_i + 1) begin
            R_4d554c71_i = (4'h9) + RR_4d554c71_i * (-2'sh1);
                        if (L_03f69c37_remainder < (R_4d554c71_i + 1'h1) * L_09181ae0_scale) begin
                            digits[R_1a4153d2_j] = R_4d554c71_i;
                            L_30ad4216_sub_value = R_4d554c71_i * L_09181ae0_scale;
                        end
                    end
                    L_03f69c37_remainder = L_03f69c37_remainder - L_30ad4216_sub_value;
                end
            end
        end
    end
    
    
endmodule