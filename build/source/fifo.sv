/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module fifo #(
        parameter WIDTH = 3'h4,
        parameter ENTRIES = 4'h8
    ) (
        input wire clk,
        input wire rst,
        input wire [(WIDTH)-1:0] din,
        input wire wput,
        output reg full,
        output reg [(WIDTH)-1:0] dout,
        input wire rget,
        output reg empty
    );
    localparam ADDR_SIZE = $clog2(ENTRIES);
    logic [(ADDR_SIZE)-1:0] D_waddr_d, D_waddr_q = 0;
    logic [(ADDR_SIZE)-1:0] D_waddr_delay_d, D_waddr_delay_q = 0;
    logic [(ADDR_SIZE)-1:0] D_raddr_d, D_raddr_q = 0;
    localparam _MP_WIDTH_1559266945 = WIDTH;
    localparam _MP_ENTRIES_1559266945 = ENTRIES;
    logic M_ram_wclk;
    logic [((($clog2(_MP_ENTRIES_1559266945)-1) - (0) + 1))-1:0] M_ram_waddr;
    logic [(((_MP_WIDTH_1559266945-1) - (0) + 1))-1:0] M_ram_write_data;
    logic M_ram_write_enable;
    logic M_ram_rclk;
    logic [((($clog2(_MP_ENTRIES_1559266945)-1) - (0) + 1))-1:0] M_ram_raddr;
    logic [(((_MP_WIDTH_1559266945-1) - (0) + 1))-1:0] M_ram_read_data;
    
    simple_dual_port_ram #(
        .WIDTH(_MP_WIDTH_1559266945),
        .ENTRIES(_MP_ENTRIES_1559266945)
    ) ram (
        .wclk(M_ram_wclk),
        .waddr(M_ram_waddr),
        .write_data(M_ram_write_data),
        .write_enable(M_ram_write_enable),
        .rclk(M_ram_rclk),
        .raddr(M_ram_raddr),
        .read_data(M_ram_read_data)
    );
    
    
    logic [(ADDR_SIZE)-1:0] next_write;
    logic wrdy;
    logic rrdy;
    always @* begin
        D_waddr_delay_d = D_waddr_delay_q;
        D_waddr_d = D_waddr_q;
        D_raddr_d = D_raddr_q;
        
        M_ram_wclk = clk;
        M_ram_rclk = clk;
        M_ram_write_enable = 1'h0;
        next_write = D_waddr_q + 1'h1;
        D_waddr_delay_d = D_waddr_q;
        wrdy = next_write != D_raddr_q;
        rrdy = D_raddr_q != D_waddr_delay_q;
        full = !wrdy;
        empty = !rrdy;
        M_ram_waddr = D_waddr_q;
        M_ram_raddr = D_raddr_q;
        M_ram_write_data = din;
        if (wput && wrdy) begin
            D_waddr_d = D_waddr_q + 1'h1;
            M_ram_write_enable = 1'h1;
        end
        if (rget && rrdy) begin
            D_raddr_d = D_raddr_q + 1'h1;
            M_ram_raddr = D_raddr_q + 1'h1;
        end
        dout = M_ram_read_data;
    end
    
    
    always @(posedge (clk)) begin
        if ((rst) == 1'b1) begin
            D_waddr_q <= 0;
            D_waddr_delay_q <= 0;
            D_raddr_q <= 0;
        end else begin
            D_waddr_q <= D_waddr_d;
            D_waddr_delay_q <= D_waddr_delay_d;
            D_raddr_q <= D_raddr_d;
        end
    end
endmodule