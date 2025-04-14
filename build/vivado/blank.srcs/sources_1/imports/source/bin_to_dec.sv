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
    logic [31:0] R_0c03fc8f_j;
    logic [31:0] RR_0c03fc8f_j;
    logic [31:0] R_1e31e057_i;
    logic [31:0] RR_1e31e057_i;
    logic [($bits(value))-1:0] L_44701aeb_remainder;
    logic L_44701aeb_blank;
    logic [($bits(value))-1:0] L_57b206ca_scale;
    logic [($bits(value))-1:0] L_72263bd5_sub_value;
    always @* begin
        digits = {DIGITS{{{4'hb}}}};
        L_44701aeb_remainder = value;
        L_44701aeb_blank = !LEADING_ZEROS;
        if (value < (64'(4'ha) ** (DIGITS))) begin
            for (RR_0c03fc8f_j = 0; RR_0c03fc8f_j < DIGITS; RR_0c03fc8f_j = RR_0c03fc8f_j + 1) begin
        R_0c03fc8f_j = (DIGITS - 1'h1) + RR_0c03fc8f_j * (-2'sh1);
                L_57b206ca_scale = (64'(4'ha) ** (R_0c03fc8f_j));
                if (L_44701aeb_remainder < L_57b206ca_scale) begin
                    if (R_0c03fc8f_j != 1'h0 && L_44701aeb_blank) begin
                        digits[R_0c03fc8f_j] = 4'ha;
                    end else begin
                        digits[R_0c03fc8f_j] = 1'h0;
                    end
                end else begin
                    L_44701aeb_blank = 1'h0;
                    L_72263bd5_sub_value = 1'h0;
                    for (RR_1e31e057_i = 0; RR_1e31e057_i < 4'h9; RR_1e31e057_i = RR_1e31e057_i + 1) begin
            R_1e31e057_i = (4'h9) + RR_1e31e057_i * (-2'sh1);
                        if (L_44701aeb_remainder < (R_1e31e057_i + 1'h1) * L_57b206ca_scale) begin
                            digits[R_0c03fc8f_j] = R_1e31e057_i;
                            L_72263bd5_sub_value = R_1e31e057_i * L_57b206ca_scale;
                        end
                    end
                    L_44701aeb_remainder = L_44701aeb_remainder - L_72263bd5_sub_value;
                end
            end
        end
    end
    
    
endmodule