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
    logic [31:0] R_60f384d0_j;
    logic [31:0] RR_60f384d0_j;
    logic [31:0] R_6ca32b14_i;
    logic [31:0] RR_6ca32b14_i;
    logic [($bits(value))-1:0] L_744fd752_remainder;
    logic L_744fd752_blank;
    logic [($bits(value))-1:0] L_722b789f_scale;
    logic [($bits(value))-1:0] L_03cd6cec_sub_value;
    always @* begin
        digits = {DIGITS{{{4'hb}}}};
        L_744fd752_remainder = value;
        L_744fd752_blank = !LEADING_ZEROS;
        if (value < (64'(4'ha) ** (DIGITS))) begin
            for (RR_60f384d0_j = 0; RR_60f384d0_j < DIGITS; RR_60f384d0_j = RR_60f384d0_j + 1) begin
        R_60f384d0_j = (DIGITS - 1'h1) + RR_60f384d0_j * (-2'sh1);
                L_722b789f_scale = (64'(4'ha) ** (R_60f384d0_j));
                if (L_744fd752_remainder < L_722b789f_scale) begin
                    if (R_60f384d0_j != 1'h0 && L_744fd752_blank) begin
                        digits[R_60f384d0_j] = 4'ha;
                    end else begin
                        digits[R_60f384d0_j] = 1'h0;
                    end
                end else begin
                    L_744fd752_blank = 1'h0;
                    L_03cd6cec_sub_value = 1'h0;
                    for (RR_6ca32b14_i = 0; RR_6ca32b14_i < 4'h9; RR_6ca32b14_i = RR_6ca32b14_i + 1) begin
            R_6ca32b14_i = (4'h9) + RR_6ca32b14_i * (-2'sh1);
                        if (L_744fd752_remainder < (R_6ca32b14_i + 1'h1) * L_722b789f_scale) begin
                            digits[R_60f384d0_j] = R_6ca32b14_i;
                            L_03cd6cec_sub_value = R_6ca32b14_i * L_722b789f_scale;
                        end
                    end
                    L_744fd752_remainder = L_744fd752_remainder - L_03cd6cec_sub_value;
                end
            end
        end
    end
    
    
endmodule