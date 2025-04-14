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
    logic [31:0] R_6694e830_j;
    logic [31:0] RR_6694e830_j;
    logic [31:0] R_6fc8659d_i;
    logic [31:0] RR_6fc8659d_i;
    logic [($bits(value))-1:0] L_799fbc79_remainder;
    logic L_799fbc79_blank;
    logic [($bits(value))-1:0] L_38eb8ec4_scale;
    logic [($bits(value))-1:0] L_6261f325_sub_value;
    always @* begin
        digits = {DIGITS{{{4'hb}}}};
        L_799fbc79_remainder = value;
        L_799fbc79_blank = !LEADING_ZEROS;
        if (value < (64'(4'ha) ** (DIGITS))) begin
            for (RR_6694e830_j = 0; RR_6694e830_j < DIGITS; RR_6694e830_j = RR_6694e830_j + 1) begin
        R_6694e830_j = (DIGITS - 1'h1) + RR_6694e830_j * (-2'sh1);
                L_38eb8ec4_scale = (64'(4'ha) ** (R_6694e830_j));
                if (L_799fbc79_remainder < L_38eb8ec4_scale) begin
                    if (R_6694e830_j != 1'h0 && L_799fbc79_blank) begin
                        digits[R_6694e830_j] = 4'ha;
                    end else begin
                        digits[R_6694e830_j] = 1'h0;
                    end
                end else begin
                    L_799fbc79_blank = 1'h0;
                    L_6261f325_sub_value = 1'h0;
                    for (RR_6fc8659d_i = 0; RR_6fc8659d_i < 4'h9; RR_6fc8659d_i = RR_6fc8659d_i + 1) begin
            R_6fc8659d_i = (4'h9) + RR_6fc8659d_i * (-2'sh1);
                        if (L_799fbc79_remainder < (R_6fc8659d_i + 1'h1) * L_38eb8ec4_scale) begin
                            digits[R_6694e830_j] = R_6fc8659d_i;
                            L_6261f325_sub_value = R_6fc8659d_i * L_38eb8ec4_scale;
                        end
                    end
                    L_799fbc79_remainder = L_799fbc79_remainder - L_6261f325_sub_value;
                end
            end
        end
    end
    
    
endmodule