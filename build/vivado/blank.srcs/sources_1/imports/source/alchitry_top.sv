/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module alchitry_top (
        input wire clk,
        input wire rst_n,
        output reg [7:0] led,
        input wire usb_rx,
        output reg usb_tx,
        output reg [4:0] mataddr,
        output reg [2:0] mattop,
        output reg [2:0] matbot,
        output reg matclk,
        output reg matoe,
        output reg matlat,
        output reg [1:0] matgnd
    );
    localparam _MP_SIZE_2026653250 = 6'h20;
    logic [31:0] M_amod_a;
    logic [31:0] M_amod_b;
    logic [5:0] M_amod_alufn;
    logic [31:0] M_amod_out;
    logic M_amod_z;
    logic M_amod_v;
    logic M_amod_n;
    logic M_amod_illop;
    
    alu #(
        .SIZE(_MP_SIZE_2026653250)
    ) amod (
        .a(M_amod_a),
        .b(M_amod_b),
        .alufn(M_amod_alufn),
        .out(M_amod_out),
        .z(M_amod_z),
        .v(M_amod_v),
        .n(M_amod_n),
        .illop(M_amod_illop)
    );
    
    
    logic rst;
    logic [1:0] D_pixeldata_d, D_pixeldata_q = 0;
    logic D_loadstate_d, D_loadstate_q = 0;
    localparam _MP_ADDRESS_SIZE_2087116063 = 3'h5;
    localparam _MP_MATRIX_WIDTH_2087116063 = 7'h40;
    logic [1:0] M_display_data;
    logic [12:0] M_display_addr;
    logic M_display_reading;
    logic [2:0] M_display_toppixel;
    logic [2:0] M_display_botpixel;
    logic M_display_latch;
    logic M_display_blank;
    logic M_display_sclk_out;
    logic [4:0] M_display_address;
    
    display_driver #(
        .ADDRESS_SIZE(_MP_ADDRESS_SIZE_2087116063),
        .MATRIX_WIDTH(_MP_MATRIX_WIDTH_2087116063)
    ) display (
        .clk(clk),
        .rst(rst),
        .data(M_display_data),
        .addr(M_display_addr),
        .reading(M_display_reading),
        .toppixel(M_display_toppixel),
        .botpixel(M_display_botpixel),
        .latch(M_display_latch),
        .blank(M_display_blank),
        .sclk_out(M_display_sclk_out),
        .address(M_display_address)
    );
    
    
    localparam _MP_STAGES_441246395 = 3'h4;
    logic M_reset_cond_in;
    logic M_reset_cond_out;
    
    reset_conditioner #(
        .STAGES(_MP_STAGES_441246395)
    ) reset_cond (
        .clk(clk),
        .in(M_reset_cond_in),
        .out(M_reset_cond_out)
    );
    
    
    always @* begin
        D_pixeldata_d = D_pixeldata_q;
        D_loadstate_d = D_loadstate_q;
        
        M_reset_cond_in = ~rst_n;
        rst = M_reset_cond_out;
        led = 8'h0;
        usb_tx = usb_rx;
        D_pixeldata_d = 2'h2;
        D_loadstate_d = 1'h0;
        if (M_display_reading) begin
            D_loadstate_d = D_loadstate_q + 1'h1;
        end
        if (M_display_reading && D_loadstate_q) begin
            D_pixeldata_d = D_pixeldata_q ^ 2'h3;
        end
        M_amod_a = 32'h0;
        M_amod_b = 32'h0;
        M_amod_alufn = 6'h0;
        M_display_data = D_pixeldata_q;
        mataddr = M_display_address;
        mattop = 3'h7;
        matbot = 3'h7;
        matclk = M_display_sclk_out;
        matoe = M_display_blank;
        matlat = M_display_latch;
        matgnd = 2'h0;
    end
    
    
    always @(posedge (clk)) begin
        if ((rst) == 1'b1) begin
            D_pixeldata_q <= 0;
            D_loadstate_q <= 0;
        end else begin
            D_pixeldata_q <= D_pixeldata_d;
            D_loadstate_q <= D_loadstate_d;
        end
    end
endmodule