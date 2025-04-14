/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module alchitry_top (
        input wire clk,
        output reg [7:0] led,
        output reg [7:0] io_led,
        input wire usb_rx,
        output reg usb_tx,
        input wire [3:0] butt_dirs,
        input wire [1:0] butt_sel_desel,
        input wire butt_reset,
        input wire butt_next_play,
        output reg [11:0] aseg
    );
    localparam CLK = 24'h989680;
    logic rst;
    localparam _MP_STAGES_2051512888 = 3'h4;
    logic M_reset_cond_in;
    logic M_reset_cond_out;
    
    reset_conditioner #(
        .STAGES(_MP_STAGES_2051512888)
    ) reset_cond (
        .clk(clk),
        .in(M_reset_cond_in),
        .out(M_reset_cond_out)
    );
    
    
    localparam _MP_RISE_1518443320 = 1'h1;
    localparam _MP_FALL_1518443320 = 1'h0;
    logic M_timerclk_in;
    logic M_timerclk_out;
    
    edge_detector #(
        .RISE(_MP_RISE_1518443320),
        .FALL(_MP_FALL_1518443320)
    ) timerclk (
        .clk(clk),
        .in(M_timerclk_in),
        .out(M_timerclk_out)
    );
    
    
    localparam _MP_SIZE_96041775 = 4'he;
    localparam _MP_DIV_96041775 = 1'h0;
    localparam _MP_TOP_96041775 = 24'h989680;
    localparam _MP_UP_96041775 = 1'h1;
    logic [13:0] M_gamecounter_value;
    
    counter #(
        .SIZE(_MP_SIZE_96041775),
        .DIV(_MP_DIV_96041775),
        .TOP(_MP_TOP_96041775),
        .UP(_MP_UP_96041775)
    ) gamecounter (
        .clk(clk),
        .rst(rst),
        .value(M_gamecounter_value)
    );
    
    
    localparam _MP_DIGITS_1367671286 = 3'h4;
    localparam _MP_DIV_1367671286 = 5'h10;
    logic [13:0] M_aseg_driver_value;
    logic [11:0] M_aseg_driver_out;
    
    multi_seven_seg #(
        .DIGITS(_MP_DIGITS_1367671286),
        .DIV(_MP_DIV_1367671286)
    ) aseg_driver (
        .clk(clk),
        .rst(rst),
        .value(M_aseg_driver_value),
        .out(M_aseg_driver_out)
    );
    
    
    logic [14:0] D_countdown_d, D_countdown_q = 0;
    always @* begin
        D_countdown_d = D_countdown_q;
        
        M_reset_cond_in = ~butt_reset;
        rst = M_reset_cond_out;
        usb_tx = usb_rx;
        led = 8'h0;
        io_led = 1'h0;
        M_timerclk_in = M_gamecounter_value[4'hd];
        D_countdown_d = D_countdown_q;
        if (M_timerclk_out) begin
            D_countdown_d = D_countdown_q + 1'h1;
        end
        M_aseg_driver_value = D_countdown_q;
        aseg = ~M_aseg_driver_out;
    end
    
    
    always @(posedge (clk)) begin
        if ((rst) == 1'b1) begin
            D_countdown_q <= 0;
        end else begin
            D_countdown_q <= D_countdown_d;
        end
    end
endmodule