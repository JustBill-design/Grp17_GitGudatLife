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
    logic [31:0] R_194ae0e8_j;
    logic [31:0] RR_194ae0e8_j;
    logic [31:0] R_0491fad9_i;
    logic [31:0] RR_0491fad9_i;
    logic [($bits(value))-1:0] L_6e86bb47_remainder;
    logic L_6e86bb47_blank;
    logic [($bits(value))-1:0] L_64d5a4a9_scale;
    logic [($bits(value))-1:0] L_4b79ad23_sub_value;
    always @* begin
        digits = {DIGITS{{{4'hb}}}};
        L_6e86bb47_remainder = value;
        L_6e86bb47_blank = !LEADING_ZEROS;
        if (value < (64'(4'ha) ** (DIGITS))) begin
            for (RR_194ae0e8_j = 0; RR_194ae0e8_j < DIGITS; RR_194ae0e8_j = RR_194ae0e8_j + 1) begin
        R_194ae0e8_j = (DIGITS - 1'h1) + RR_194ae0e8_j * (-2'sh1);
                L_64d5a4a9_scale = (64'(4'ha) ** (R_194ae0e8_j));
                if (L_6e86bb47_remainder < L_64d5a4a9_scale) begin
                    if (R_194ae0e8_j != 1'h0 && L_6e86bb47_blank) begin
                        digits[R_194ae0e8_j] = 4'ha;
                    end else begin
                        digits[R_194ae0e8_j] = 1'h0;
                    end
                end else begin
                    L_6e86bb47_blank = 1'h0;
                    L_4b79ad23_sub_value = 1'h0;
                    for (RR_0491fad9_i = 0; RR_0491fad9_i < 4'h9; RR_0491fad9_i = RR_0491fad9_i + 1) begin
            R_0491fad9_i = (4'h9) + RR_0491fad9_i * (-2'sh1);
                        if (L_6e86bb47_remainder < (R_0491fad9_i + 1'h1) * L_64d5a4a9_scale) begin
                            digits[R_194ae0e8_j] = R_0491fad9_i;
                            L_4b79ad23_sub_value = R_0491fad9_i * L_64d5a4a9_scale;
                        end
                    end
                    L_6e86bb47_remainder = L_6e86bb47_remainder - L_4b79ad23_sub_value;
                end
            end
        end
    end
    
    
endmodule