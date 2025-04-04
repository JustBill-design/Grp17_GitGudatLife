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
    logic [31:0] R_782c928b_j;
    logic [31:0] RR_782c928b_j;
    logic [31:0] R_25d04a12_i;
    logic [31:0] RR_25d04a12_i;
    logic [($bits(value))-1:0] L_63447144_remainder;
    logic L_63447144_blank;
    logic [($bits(value))-1:0] L_127e7234_scale;
    logic [($bits(value))-1:0] L_7fb77afb_sub_value;
    always @* begin
        digits = {DIGITS{{{4'hb}}}};
        L_63447144_remainder = value;
        L_63447144_blank = !LEADING_ZEROS;
        if (value < (64'(4'ha) ** (DIGITS))) begin
            for (RR_782c928b_j = 0; RR_782c928b_j < DIGITS; RR_782c928b_j = RR_782c928b_j + 1) begin
        R_782c928b_j = (DIGITS - 1'h1) + RR_782c928b_j * (-2'sh1);
                L_127e7234_scale = (64'(4'ha) ** (R_782c928b_j));
                if (L_63447144_remainder < L_127e7234_scale) begin
                    if (R_782c928b_j != 1'h0 && L_63447144_blank) begin
                        digits[R_782c928b_j] = 4'ha;
                    end else begin
                        digits[R_782c928b_j] = 1'h0;
                    end
                end else begin
                    L_63447144_blank = 1'h0;
                    L_7fb77afb_sub_value = 1'h0;
                    for (RR_25d04a12_i = 0; RR_25d04a12_i < 4'h9; RR_25d04a12_i = RR_25d04a12_i + 1) begin
            R_25d04a12_i = (4'h9) + RR_25d04a12_i * (-2'sh1);
                        if (L_63447144_remainder < (R_25d04a12_i + 1'h1) * L_127e7234_scale) begin
                            digits[R_782c928b_j] = R_25d04a12_i;
                            L_7fb77afb_sub_value = R_25d04a12_i * L_127e7234_scale;
                        end
                    end
                    L_63447144_remainder = L_63447144_remainder - L_7fb77afb_sub_value;
                end
            end
        end
    end
    
    
endmodule