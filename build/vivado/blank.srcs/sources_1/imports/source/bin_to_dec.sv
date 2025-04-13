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
    logic [31:0] R_34a18a0e_j;
    logic [31:0] RR_34a18a0e_j;
    logic [31:0] R_308ea92a_i;
    logic [31:0] RR_308ea92a_i;
    logic [($bits(value))-1:0] L_08368424_remainder;
    logic L_08368424_blank;
    logic [($bits(value))-1:0] L_2e041ff9_scale;
    logic [($bits(value))-1:0] L_0812d36d_sub_value;
    always @* begin
        digits = {DIGITS{{{4'hb}}}};
        L_08368424_remainder = value;
        L_08368424_blank = !LEADING_ZEROS;
        if (value < (64'(4'ha) ** (DIGITS))) begin
            for (RR_34a18a0e_j = 0; RR_34a18a0e_j < DIGITS; RR_34a18a0e_j = RR_34a18a0e_j + 1) begin
        R_34a18a0e_j = (DIGITS - 1'h1) + RR_34a18a0e_j * (-2'sh1);
                L_2e041ff9_scale = (64'(4'ha) ** (R_34a18a0e_j));
                if (L_08368424_remainder < L_2e041ff9_scale) begin
                    if (R_34a18a0e_j != 1'h0 && L_08368424_blank) begin
                        digits[R_34a18a0e_j] = 4'ha;
                    end else begin
                        digits[R_34a18a0e_j] = 1'h0;
                    end
                end else begin
                    L_08368424_blank = 1'h0;
                    L_0812d36d_sub_value = 1'h0;
                    for (RR_308ea92a_i = 0; RR_308ea92a_i < 4'h9; RR_308ea92a_i = RR_308ea92a_i + 1) begin
            R_308ea92a_i = (4'h9) + RR_308ea92a_i * (-2'sh1);
                        if (L_08368424_remainder < (R_308ea92a_i + 1'h1) * L_2e041ff9_scale) begin
                            digits[R_34a18a0e_j] = R_308ea92a_i;
                            L_0812d36d_sub_value = R_308ea92a_i * L_2e041ff9_scale;
                        end
                    end
                    L_08368424_remainder = L_08368424_remainder - L_0812d36d_sub_value;
                end
            end
        end
    end
    
    
endmodule