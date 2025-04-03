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
    logic [31:0] R_65b261db_j;
    logic [31:0] RR_65b261db_j;
    logic [31:0] R_58cb160e_i;
    logic [31:0] RR_58cb160e_i;
    logic [($bits(value))-1:0] L_409a2c6c_remainder;
    logic L_409a2c6c_blank;
    logic [($bits(value))-1:0] L_45537a89_scale;
    logic [($bits(value))-1:0] L_1b9675ef_sub_value;
    always @* begin
        digits = {DIGITS{{{4'hb}}}};
        L_409a2c6c_remainder = value;
        L_409a2c6c_blank = !LEADING_ZEROS;
        if (value < (64'(4'ha) ** (DIGITS))) begin
            for (RR_65b261db_j = 0; RR_65b261db_j < DIGITS; RR_65b261db_j = RR_65b261db_j + 1) begin
        R_65b261db_j = (DIGITS - 1'h1) + RR_65b261db_j * (-2'sh1);
                L_45537a89_scale = (64'(4'ha) ** (R_65b261db_j));
                if (L_409a2c6c_remainder < L_45537a89_scale) begin
                    if (R_65b261db_j != 1'h0 && L_409a2c6c_blank) begin
                        digits[R_65b261db_j] = 4'ha;
                    end else begin
                        digits[R_65b261db_j] = 1'h0;
                    end
                end else begin
                    L_409a2c6c_blank = 1'h0;
                    L_1b9675ef_sub_value = 1'h0;
                    for (RR_58cb160e_i = 0; RR_58cb160e_i < 4'h9; RR_58cb160e_i = RR_58cb160e_i + 1) begin
            R_58cb160e_i = (4'h9) + RR_58cb160e_i * (-2'sh1);
                        if (L_409a2c6c_remainder < (R_58cb160e_i + 1'h1) * L_45537a89_scale) begin
                            digits[R_65b261db_j] = R_58cb160e_i;
                            L_1b9675ef_sub_value = R_58cb160e_i * L_45537a89_scale;
                        end
                    end
                    L_409a2c6c_remainder = L_409a2c6c_remainder - L_1b9675ef_sub_value;
                end
            end
        end
    end
    
    
endmodule