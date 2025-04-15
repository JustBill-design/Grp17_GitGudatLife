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
    logic [31:0] R_03eb6e88_j;
    logic [31:0] RR_03eb6e88_j;
    logic [31:0] R_1ff6d172_i;
    logic [31:0] RR_1ff6d172_i;
    logic [($bits(value))-1:0] L_7000ce08_remainder;
    logic L_7000ce08_blank;
    logic [($bits(value))-1:0] L_54486985_scale;
    logic [($bits(value))-1:0] L_25d4815b_sub_value;
    always @* begin
        digits = {DIGITS{{{4'hb}}}};
        L_7000ce08_remainder = value;
        L_7000ce08_blank = !LEADING_ZEROS;
        if (value < (64'(4'ha) ** (DIGITS))) begin
            for (RR_03eb6e88_j = 0; RR_03eb6e88_j < DIGITS; RR_03eb6e88_j = RR_03eb6e88_j + 1) begin
        R_03eb6e88_j = (DIGITS - 1'h1) + RR_03eb6e88_j * (-2'sh1);
                L_54486985_scale = (64'(4'ha) ** (R_03eb6e88_j));
                if (L_7000ce08_remainder < L_54486985_scale) begin
                    if (R_03eb6e88_j != 1'h0 && L_7000ce08_blank) begin
                        digits[R_03eb6e88_j] = 4'ha;
                    end else begin
                        digits[R_03eb6e88_j] = 1'h0;
                    end
                end else begin
                    L_7000ce08_blank = 1'h0;
                    L_25d4815b_sub_value = 1'h0;
                    for (RR_1ff6d172_i = 0; RR_1ff6d172_i < 4'h9; RR_1ff6d172_i = RR_1ff6d172_i + 1) begin
            R_1ff6d172_i = (4'h9) + RR_1ff6d172_i * (-2'sh1);
                        if (L_7000ce08_remainder < (R_1ff6d172_i + 1'h1) * L_54486985_scale) begin
                            digits[R_03eb6e88_j] = R_1ff6d172_i;
                            L_25d4815b_sub_value = R_1ff6d172_i * L_54486985_scale;
                        end
                    end
                    L_7000ce08_remainder = L_7000ce08_remainder - L_25d4815b_sub_value;
                end
            end
        end
    end
    
    
endmodule