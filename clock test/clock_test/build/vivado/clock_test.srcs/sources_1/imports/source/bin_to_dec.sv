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
    logic [31:0] R_689d7213_j;
    logic [31:0] RR_689d7213_j;
    logic [31:0] R_623b6a99_i;
    logic [31:0] RR_623b6a99_i;
    logic [($bits(value))-1:0] L_5d2e5d8a_remainder;
    logic L_5d2e5d8a_blank;
    logic [($bits(value))-1:0] L_40317012_scale;
    logic [($bits(value))-1:0] L_21366886_sub_value;
    always @* begin
        digits = {DIGITS{{{4'hb}}}};
        L_5d2e5d8a_remainder = value;
        L_5d2e5d8a_blank = !LEADING_ZEROS;
        if (value < (64'(4'ha) ** (DIGITS))) begin
            for (RR_689d7213_j = 0; RR_689d7213_j < DIGITS; RR_689d7213_j = RR_689d7213_j + 1) begin
        R_689d7213_j = (DIGITS - 1'h1) + RR_689d7213_j * (-2'sh1);
                L_40317012_scale = (64'(4'ha) ** (R_689d7213_j));
                if (L_5d2e5d8a_remainder < L_40317012_scale) begin
                    if (R_689d7213_j != 1'h0 && L_5d2e5d8a_blank) begin
                        digits[R_689d7213_j] = 4'ha;
                    end else begin
                        digits[R_689d7213_j] = 1'h0;
                    end
                end else begin
                    L_5d2e5d8a_blank = 1'h0;
                    L_21366886_sub_value = 1'h0;
                    for (RR_623b6a99_i = 0; RR_623b6a99_i < 4'h9; RR_623b6a99_i = RR_623b6a99_i + 1) begin
            R_623b6a99_i = (4'h9) + RR_623b6a99_i * (-2'sh1);
                        if (L_5d2e5d8a_remainder < (R_623b6a99_i + 1'h1) * L_40317012_scale) begin
                            digits[R_689d7213_j] = R_623b6a99_i;
                            L_21366886_sub_value = R_623b6a99_i * L_40317012_scale;
                        end
                    end
                    L_5d2e5d8a_remainder = L_5d2e5d8a_remainder - L_21366886_sub_value;
                end
            end
        end
    end
    
    
endmodule