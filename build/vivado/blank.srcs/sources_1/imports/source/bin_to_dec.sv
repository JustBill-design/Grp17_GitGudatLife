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
    logic [31:0] R_5884038b_j;
    logic [31:0] RR_5884038b_j;
    logic [31:0] R_6d08fd2e_i;
    logic [31:0] RR_6d08fd2e_i;
    logic [($bits(value))-1:0] L_6d5ac870_remainder;
    logic L_6d5ac870_blank;
    logic [($bits(value))-1:0] L_46c05a47_scale;
    logic [($bits(value))-1:0] L_77661c5c_sub_value;
    always @* begin
        digits = {DIGITS{{{4'hb}}}};
        L_6d5ac870_remainder = value;
        L_6d5ac870_blank = !LEADING_ZEROS;
        if (value < (64'(4'ha) ** (DIGITS))) begin
            for (RR_5884038b_j = 0; RR_5884038b_j < DIGITS; RR_5884038b_j = RR_5884038b_j + 1) begin
        R_5884038b_j = (DIGITS - 1'h1) + RR_5884038b_j * (-2'sh1);
                L_46c05a47_scale = (64'(4'ha) ** (R_5884038b_j));
                if (L_6d5ac870_remainder < L_46c05a47_scale) begin
                    if (R_5884038b_j != 1'h0 && L_6d5ac870_blank) begin
                        digits[R_5884038b_j] = 4'ha;
                    end else begin
                        digits[R_5884038b_j] = 1'h0;
                    end
                end else begin
                    L_6d5ac870_blank = 1'h0;
                    L_77661c5c_sub_value = 1'h0;
                    for (RR_6d08fd2e_i = 0; RR_6d08fd2e_i < 4'h9; RR_6d08fd2e_i = RR_6d08fd2e_i + 1) begin
            R_6d08fd2e_i = (4'h9) + RR_6d08fd2e_i * (-2'sh1);
                        if (L_6d5ac870_remainder < (R_6d08fd2e_i + 1'h1) * L_46c05a47_scale) begin
                            digits[R_5884038b_j] = R_6d08fd2e_i;
                            L_77661c5c_sub_value = R_6d08fd2e_i * L_46c05a47_scale;
                        end
                    end
                    L_6d5ac870_remainder = L_6d5ac870_remainder - L_77661c5c_sub_value;
                end
            end
        end
    end
    
    
endmodule