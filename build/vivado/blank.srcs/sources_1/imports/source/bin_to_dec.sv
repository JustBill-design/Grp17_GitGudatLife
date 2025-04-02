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
    logic [31:0] R_64477c1e_j;
    logic [31:0] RR_64477c1e_j;
    logic [31:0] R_1b7c6112_i;
    logic [31:0] RR_1b7c6112_i;
    logic [($bits(value))-1:0] L_2bf7b854_remainder;
    logic L_2bf7b854_blank;
    logic [($bits(value))-1:0] L_2df9850a_scale;
    logic [($bits(value))-1:0] L_1ba11ef2_sub_value;
    always @* begin
        digits = {DIGITS{{{4'hb}}}};
        L_2bf7b854_remainder = value;
        L_2bf7b854_blank = !LEADING_ZEROS;
        if (value < (64'(4'ha) ** (DIGITS))) begin
            for (RR_64477c1e_j = 0; RR_64477c1e_j < DIGITS; RR_64477c1e_j = RR_64477c1e_j + 1) begin
        R_64477c1e_j = (DIGITS - 1'h1) + RR_64477c1e_j * (-2'sh1);
                L_2df9850a_scale = (64'(4'ha) ** (R_64477c1e_j));
                if (L_2bf7b854_remainder < L_2df9850a_scale) begin
                    if (R_64477c1e_j != 1'h0 && L_2bf7b854_blank) begin
                        digits[R_64477c1e_j] = 4'ha;
                    end else begin
                        digits[R_64477c1e_j] = 1'h0;
                    end
                end else begin
                    L_2bf7b854_blank = 1'h0;
                    L_1ba11ef2_sub_value = 1'h0;
                    for (RR_1b7c6112_i = 0; RR_1b7c6112_i < 4'h9; RR_1b7c6112_i = RR_1b7c6112_i + 1) begin
            R_1b7c6112_i = (4'h9) + RR_1b7c6112_i * (-2'sh1);
                        if (L_2bf7b854_remainder < (R_1b7c6112_i + 1'h1) * L_2df9850a_scale) begin
                            digits[R_64477c1e_j] = R_1b7c6112_i;
                            L_1ba11ef2_sub_value = R_1b7c6112_i * L_2df9850a_scale;
                        end
                    end
                    L_2bf7b854_remainder = L_2bf7b854_remainder - L_1ba11ef2_sub_value;
                end
            end
        end
    end
    
    
endmodule