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
    logic [31:0] R_125966c5_j;
    logic [31:0] RR_125966c5_j;
    logic [31:0] R_7d6c36a8_i;
    logic [31:0] RR_7d6c36a8_i;
    logic [($bits(value))-1:0] L_4400956b_remainder;
    logic L_4400956b_blank;
    logic [($bits(value))-1:0] L_1a6a2775_scale;
    logic [($bits(value))-1:0] L_6c1068d6_sub_value;
    always @* begin
        digits = {DIGITS{{{4'hb}}}};
        L_4400956b_remainder = value;
        L_4400956b_blank = !LEADING_ZEROS;
        if (value < (64'(4'ha) ** (DIGITS))) begin
            for (RR_125966c5_j = 0; RR_125966c5_j < DIGITS; RR_125966c5_j = RR_125966c5_j + 1) begin
        R_125966c5_j = (DIGITS - 1'h1) + RR_125966c5_j * (-2'sh1);
                L_1a6a2775_scale = (64'(4'ha) ** (R_125966c5_j));
                if (L_4400956b_remainder < L_1a6a2775_scale) begin
                    if (R_125966c5_j != 1'h0 && L_4400956b_blank) begin
                        digits[R_125966c5_j] = 4'ha;
                    end else begin
                        digits[R_125966c5_j] = 1'h0;
                    end
                end else begin
                    L_4400956b_blank = 1'h0;
                    L_6c1068d6_sub_value = 1'h0;
                    for (RR_7d6c36a8_i = 0; RR_7d6c36a8_i < 4'h9; RR_7d6c36a8_i = RR_7d6c36a8_i + 1) begin
            R_7d6c36a8_i = (4'h9) + RR_7d6c36a8_i * (-2'sh1);
                        if (L_4400956b_remainder < (R_7d6c36a8_i + 1'h1) * L_1a6a2775_scale) begin
                            digits[R_125966c5_j] = R_7d6c36a8_i;
                            L_6c1068d6_sub_value = R_7d6c36a8_i * L_1a6a2775_scale;
                        end
                    end
                    L_4400956b_remainder = L_4400956b_remainder - L_6c1068d6_sub_value;
                end
            end
        end
    end
    
    
endmodule