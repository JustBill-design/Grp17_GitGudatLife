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
    logic [31:0] R_646b08c2_j;
    logic [31:0] RR_646b08c2_j;
    logic [31:0] R_10e473c1_i;
    logic [31:0] RR_10e473c1_i;
    logic [($bits(value))-1:0] L_7ef4486a_remainder;
    logic L_7ef4486a_blank;
    logic [($bits(value))-1:0] L_53f08e85_scale;
    logic [($bits(value))-1:0] L_6cc963d3_sub_value;
    always @* begin
        digits = {DIGITS{{{4'hb}}}};
        L_7ef4486a_remainder = value;
        L_7ef4486a_blank = !LEADING_ZEROS;
        if (value < (64'(4'ha) ** (DIGITS))) begin
            for (RR_646b08c2_j = 0; RR_646b08c2_j < DIGITS; RR_646b08c2_j = RR_646b08c2_j + 1) begin
        R_646b08c2_j = (DIGITS - 1'h1) + RR_646b08c2_j * (-2'sh1);
                L_53f08e85_scale = (64'(4'ha) ** (R_646b08c2_j));
                if (L_7ef4486a_remainder < L_53f08e85_scale) begin
                    if (R_646b08c2_j != 1'h0 && L_7ef4486a_blank) begin
                        digits[R_646b08c2_j] = 4'ha;
                    end else begin
                        digits[R_646b08c2_j] = 1'h0;
                    end
                end else begin
                    L_7ef4486a_blank = 1'h0;
                    L_6cc963d3_sub_value = 1'h0;
                    for (RR_10e473c1_i = 0; RR_10e473c1_i < 4'h9; RR_10e473c1_i = RR_10e473c1_i + 1) begin
            R_10e473c1_i = (4'h9) + RR_10e473c1_i * (-2'sh1);
                        if (L_7ef4486a_remainder < (R_10e473c1_i + 1'h1) * L_53f08e85_scale) begin
                            digits[R_646b08c2_j] = R_10e473c1_i;
                            L_6cc963d3_sub_value = R_10e473c1_i * L_53f08e85_scale;
                        end
                    end
                    L_7ef4486a_remainder = L_7ef4486a_remainder - L_6cc963d3_sub_value;
                end
            end
        end
    end
    
    
endmodule