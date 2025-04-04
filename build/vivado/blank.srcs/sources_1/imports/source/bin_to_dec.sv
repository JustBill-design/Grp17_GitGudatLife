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
    logic [31:0] R_02c2ece7_j;
    logic [31:0] RR_02c2ece7_j;
    logic [31:0] R_5b569dd1_i;
    logic [31:0] RR_5b569dd1_i;
    logic [($bits(value))-1:0] L_6c556d8b_remainder;
    logic L_6c556d8b_blank;
    logic [($bits(value))-1:0] L_46dd08f6_scale;
    logic [($bits(value))-1:0] L_70e49cae_sub_value;
    always @* begin
        digits = {DIGITS{{{4'hb}}}};
        L_6c556d8b_remainder = value;
        L_6c556d8b_blank = !LEADING_ZEROS;
        if (value < (64'(4'ha) ** (DIGITS))) begin
            for (RR_02c2ece7_j = 0; RR_02c2ece7_j < DIGITS; RR_02c2ece7_j = RR_02c2ece7_j + 1) begin
        R_02c2ece7_j = (DIGITS - 1'h1) + RR_02c2ece7_j * (-2'sh1);
                L_46dd08f6_scale = (64'(4'ha) ** (R_02c2ece7_j));
                if (L_6c556d8b_remainder < L_46dd08f6_scale) begin
                    if (R_02c2ece7_j != 1'h0 && L_6c556d8b_blank) begin
                        digits[R_02c2ece7_j] = 4'ha;
                    end else begin
                        digits[R_02c2ece7_j] = 1'h0;
                    end
                end else begin
                    L_6c556d8b_blank = 1'h0;
                    L_70e49cae_sub_value = 1'h0;
                    for (RR_5b569dd1_i = 0; RR_5b569dd1_i < 4'h9; RR_5b569dd1_i = RR_5b569dd1_i + 1) begin
            R_5b569dd1_i = (4'h9) + RR_5b569dd1_i * (-2'sh1);
                        if (L_6c556d8b_remainder < (R_5b569dd1_i + 1'h1) * L_46dd08f6_scale) begin
                            digits[R_02c2ece7_j] = R_5b569dd1_i;
                            L_70e49cae_sub_value = R_5b569dd1_i * L_46dd08f6_scale;
                        end
                    end
                    L_6c556d8b_remainder = L_6c556d8b_remainder - L_70e49cae_sub_value;
                end
            end
        end
    end
    
    
endmodule