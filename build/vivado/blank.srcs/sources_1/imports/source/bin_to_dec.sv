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
    logic [31:0] R_79c099ed_j;
    logic [31:0] RR_79c099ed_j;
    logic [31:0] R_71d89131_i;
    logic [31:0] RR_71d89131_i;
    logic [($bits(value))-1:0] L_759cdaed_remainder;
    logic L_759cdaed_blank;
    logic [($bits(value))-1:0] L_6c3290ed_scale;
    logic [($bits(value))-1:0] L_0f9b1cc2_sub_value;
    always @* begin
        digits = {DIGITS{{{4'hb}}}};
        L_759cdaed_remainder = value;
        L_759cdaed_blank = !LEADING_ZEROS;
        if (value < (64'(4'ha) ** (DIGITS))) begin
            for (RR_79c099ed_j = 0; RR_79c099ed_j < DIGITS; RR_79c099ed_j = RR_79c099ed_j + 1) begin
        R_79c099ed_j = (DIGITS - 1'h1) + RR_79c099ed_j * (-2'sh1);
                L_6c3290ed_scale = (64'(4'ha) ** (R_79c099ed_j));
                if (L_759cdaed_remainder < L_6c3290ed_scale) begin
                    if (R_79c099ed_j != 1'h0 && L_759cdaed_blank) begin
                        digits[R_79c099ed_j] = 4'ha;
                    end else begin
                        digits[R_79c099ed_j] = 1'h0;
                    end
                end else begin
                    L_759cdaed_blank = 1'h0;
                    L_0f9b1cc2_sub_value = 1'h0;
                    for (RR_71d89131_i = 0; RR_71d89131_i < 4'h9; RR_71d89131_i = RR_71d89131_i + 1) begin
            R_71d89131_i = (4'h9) + RR_71d89131_i * (-2'sh1);
                        if (L_759cdaed_remainder < (R_71d89131_i + 1'h1) * L_6c3290ed_scale) begin
                            digits[R_79c099ed_j] = R_71d89131_i;
                            L_0f9b1cc2_sub_value = R_71d89131_i * L_6c3290ed_scale;
                        end
                    end
                    L_759cdaed_remainder = L_759cdaed_remainder - L_0f9b1cc2_sub_value;
                end
            end
        end
    end
    
    
endmodule