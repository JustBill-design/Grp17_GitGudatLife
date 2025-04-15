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
    logic [31:0] R_12230b12_j;
    logic [31:0] RR_12230b12_j;
    logic [31:0] R_1eb2fbcf_i;
    logic [31:0] RR_1eb2fbcf_i;
    logic [($bits(value))-1:0] L_13f6817c_remainder;
    logic L_13f6817c_blank;
    logic [($bits(value))-1:0] L_75d7549a_scale;
    logic [($bits(value))-1:0] L_03a33ad2_sub_value;
    always @* begin
        digits = {DIGITS{{{4'hb}}}};
        L_13f6817c_remainder = value;
        L_13f6817c_blank = !LEADING_ZEROS;
        if (value < (64'(4'ha) ** (DIGITS))) begin
            for (RR_12230b12_j = 0; RR_12230b12_j < DIGITS; RR_12230b12_j = RR_12230b12_j + 1) begin
        R_12230b12_j = (DIGITS - 1'h1) + RR_12230b12_j * (-2'sh1);
                L_75d7549a_scale = (64'(4'ha) ** (R_12230b12_j));
                if (L_13f6817c_remainder < L_75d7549a_scale) begin
                    if (R_12230b12_j != 1'h0 && L_13f6817c_blank) begin
                        digits[R_12230b12_j] = 4'ha;
                    end else begin
                        digits[R_12230b12_j] = 1'h0;
                    end
                end else begin
                    L_13f6817c_blank = 1'h0;
                    L_03a33ad2_sub_value = 1'h0;
                    for (RR_1eb2fbcf_i = 0; RR_1eb2fbcf_i < 4'h9; RR_1eb2fbcf_i = RR_1eb2fbcf_i + 1) begin
            R_1eb2fbcf_i = (4'h9) + RR_1eb2fbcf_i * (-2'sh1);
                        if (L_13f6817c_remainder < (R_1eb2fbcf_i + 1'h1) * L_75d7549a_scale) begin
                            digits[R_12230b12_j] = R_1eb2fbcf_i;
                            L_03a33ad2_sub_value = R_1eb2fbcf_i * L_75d7549a_scale;
                        end
                    end
                    L_13f6817c_remainder = L_13f6817c_remainder - L_03a33ad2_sub_value;
                end
            end
        end
    end
    
    
endmodule