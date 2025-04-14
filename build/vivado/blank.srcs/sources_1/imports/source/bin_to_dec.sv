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
    logic [31:0] R_66cd9db8_j;
    logic [31:0] RR_66cd9db8_j;
    logic [31:0] R_44be9092_i;
    logic [31:0] RR_44be9092_i;
    logic [($bits(value))-1:0] L_587e9304_remainder;
    logic L_587e9304_blank;
    logic [($bits(value))-1:0] L_6ad1e01b_scale;
    logic [($bits(value))-1:0] L_42a366b5_sub_value;
    always @* begin
        digits = {DIGITS{{{4'hb}}}};
        L_587e9304_remainder = value;
        L_587e9304_blank = !LEADING_ZEROS;
        if (value < (64'(4'ha) ** (DIGITS))) begin
            for (RR_66cd9db8_j = 0; RR_66cd9db8_j < DIGITS; RR_66cd9db8_j = RR_66cd9db8_j + 1) begin
        R_66cd9db8_j = (DIGITS - 1'h1) + RR_66cd9db8_j * (-2'sh1);
                L_6ad1e01b_scale = (64'(4'ha) ** (R_66cd9db8_j));
                if (L_587e9304_remainder < L_6ad1e01b_scale) begin
                    if (R_66cd9db8_j != 1'h0 && L_587e9304_blank) begin
                        digits[R_66cd9db8_j] = 4'ha;
                    end else begin
                        digits[R_66cd9db8_j] = 1'h0;
                    end
                end else begin
                    L_587e9304_blank = 1'h0;
                    L_42a366b5_sub_value = 1'h0;
                    for (RR_44be9092_i = 0; RR_44be9092_i < 4'h9; RR_44be9092_i = RR_44be9092_i + 1) begin
            R_44be9092_i = (4'h9) + RR_44be9092_i * (-2'sh1);
                        if (L_587e9304_remainder < (R_44be9092_i + 1'h1) * L_6ad1e01b_scale) begin
                            digits[R_66cd9db8_j] = R_44be9092_i;
                            L_42a366b5_sub_value = R_44be9092_i * L_6ad1e01b_scale;
                        end
                    end
                    L_587e9304_remainder = L_587e9304_remainder - L_42a366b5_sub_value;
                end
            end
        end
    end
    
    
endmodule