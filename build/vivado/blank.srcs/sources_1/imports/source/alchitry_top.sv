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
    localparam _MP_SIZE_2087116063 = 6'h20;
    logic [31:0] M_amod_a;
    logic [31:0] M_amod_b;
    logic [5:0] M_amod_alufn;
    logic [31:0] M_amod_out;
    logic M_amod_z;
    logic M_amod_v;
    logic M_amod_n;
    logic M_amod_illop;
    
    alu #(
        .SIZE(_MP_SIZE_2087116063)
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
    localparam _MP_ADDRESS_SIZE_315466384 = 3'h5;
    localparam _MP_MATRIX_WIDTH_315466384 = 7'h40;
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
        .ADDRESS_SIZE(_MP_ADDRESS_SIZE_315466384),
        .MATRIX_WIDTH(_MP_MATRIX_WIDTH_315466384)
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
    
    
    localparam _MP_STAGES_314496474 = 3'h4;
    logic M_reset_cond_in;
    logic M_reset_cond_out;
    
    reset_conditioner #(
        .STAGES(_MP_STAGES_314496474)
    ) reset_cond (
        .clk(clk),
        .in(M_reset_cond_in),
        .out(M_reset_cond_out)
    );
    
    
    always @* begin
        D_pixeldata_d = D_pixeldata_q;
        
        M_reset_cond_in = ~rst_n;
        rst = M_reset_cond_out;
        led = 8'h0;
        usb_tx = usb_rx;
        if (M_display_addr[3'h6:1'h0] == 7'h40) begin
            D_pixeldata_d = 2'h1;
        end else begin
            if (M_display_reading) begin
                D_pixeldata_d = D_pixeldata_q + 1'h1;
            end
        end
        M_amod_a = 32'h0;
        M_amod_b = 32'h0;
        M_amod_alufn = 6'h0;
        M_display_data = D_pixeldata_q;
        mataddr = M_display_address;
        mattop = M_display_toppixel;
        matbot = M_display_botpixel;
        matclk = M_display_sclk_out;
        matoe = M_display_blank;
        matlat = M_display_latch;
        matgnd = 2'h0;
    end
    
    
    always @(posedge (clk)) begin
        if ((rst) == 1'b1) begin
            D_pixeldata_q <= 0;
        end else begin
            D_pixeldata_q <= D_pixeldata_d;
        end
    end
endmodule