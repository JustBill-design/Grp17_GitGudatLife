/*
    This file was generated automatically by Alchitry Labs 2.0.29-BETA.
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
    logic [31:0] R_19ee3cc1_j;
    logic [31:0] RR_19ee3cc1_j;
    logic [31:0] R_19bf66ee_i;
    logic [31:0] RR_19bf66ee_i;
    logic [($bits(value))-1:0] L_5d5329c1_remainder;
    logic L_5d5329c1_blank;
    logic [($bits(value))-1:0] L_4eda1580_scale;
    logic [($bits(value))-1:0] L_67705923_sub_value;
    always @* begin
        digits = {DIGITS{{{4'hb}}}};
        L_5d5329c1_remainder = value;
        L_5d5329c1_blank = !LEADING_ZEROS;
        if (value < (64'(4'ha) ** (DIGITS))) begin
            for (RR_19ee3cc1_j = 0; RR_19ee3cc1_j < DIGITS; RR_19ee3cc1_j = RR_19ee3cc1_j + 1) begin
        R_19ee3cc1_j = (DIGITS - 1'h1) + RR_19ee3cc1_j * (-2'sh1);
                L_4eda1580_scale = (64'(4'ha) ** (R_19ee3cc1_j));
                if (L_5d5329c1_remainder < L_4eda1580_scale) begin
                    if (R_19ee3cc1_j != 1'h0 && L_5d5329c1_blank) begin
                        digits[R_19ee3cc1_j] = 4'ha;
                    end else begin
                        digits[R_19ee3cc1_j] = 1'h0;
                    end
                end else begin
                    L_5d5329c1_blank = 1'h0;
                    L_67705923_sub_value = 1'h0;
                    for (RR_19bf66ee_i = 0; RR_19bf66ee_i < 4'h9; RR_19bf66ee_i = RR_19bf66ee_i + 1) begin
            R_19bf66ee_i = (4'h9) + RR_19bf66ee_i * (-2'sh1);
                        if (L_5d5329c1_remainder < (R_19bf66ee_i + 1'h1) * L_4eda1580_scale) begin
                            digits[R_19ee3cc1_j] = R_19bf66ee_i;
                            L_67705923_sub_value = R_19bf66ee_i * L_4eda1580_scale;
                        end
                    end
                    L_5d5329c1_remainder = L_5d5329c1_remainder - L_67705923_sub_value;
                end
            end
        end
    end
    
    
endmodule