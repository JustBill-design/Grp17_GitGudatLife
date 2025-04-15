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
    logic [31:0] R_423378f7_j;
    logic [31:0] RR_423378f7_j;
    logic [31:0] R_7d5b68d0_i;
    logic [31:0] RR_7d5b68d0_i;
    logic [($bits(value))-1:0] L_41cca054_remainder;
    logic L_41cca054_blank;
    logic [($bits(value))-1:0] L_6a4cdc2d_scale;
    logic [($bits(value))-1:0] L_604cb506_sub_value;
    always @* begin
        digits = {DIGITS{{{4'hb}}}};
        L_41cca054_remainder = value;
        L_41cca054_blank = !LEADING_ZEROS;
        if (value < (64'(4'ha) ** (DIGITS))) begin
            for (RR_423378f7_j = 0; RR_423378f7_j < DIGITS; RR_423378f7_j = RR_423378f7_j + 1) begin
        R_423378f7_j = (DIGITS - 1'h1) + RR_423378f7_j * (-2'sh1);
                L_6a4cdc2d_scale = (64'(4'ha) ** (R_423378f7_j));
                if (L_41cca054_remainder < L_6a4cdc2d_scale) begin
                    if (R_423378f7_j != 1'h0 && L_41cca054_blank) begin
                        digits[R_423378f7_j] = 4'ha;
                    end else begin
                        digits[R_423378f7_j] = 1'h0;
                    end
                end else begin
                    L_41cca054_blank = 1'h0;
                    L_604cb506_sub_value = 1'h0;
                    for (RR_7d5b68d0_i = 0; RR_7d5b68d0_i < 4'h9; RR_7d5b68d0_i = RR_7d5b68d0_i + 1) begin
            R_7d5b68d0_i = (4'h9) + RR_7d5b68d0_i * (-2'sh1);
                        if (L_41cca054_remainder < (R_7d5b68d0_i + 1'h1) * L_6a4cdc2d_scale) begin
                            digits[R_423378f7_j] = R_7d5b68d0_i;
                            L_604cb506_sub_value = R_7d5b68d0_i * L_6a4cdc2d_scale;
                        end
                    end
                    L_41cca054_remainder = L_41cca054_remainder - L_604cb506_sub_value;
                end
            end
        end
    end
    
    
endmodule