`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:06:38 02/27/2020 
// Design Name: 
// Module Name:    vga_test 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module vga_test(
  input clk,
  output reg [2:0] pixel,
  output hsync_out,
  output vsync_out
);
	 wire clk_25;
    clock_inst instance_name (
    .CLKIN_IN(clk), 
    .CLKFX_OUT(clk_25)
    );

    wire inDisplayArea;
    wire [9:0] CounterX;

    hvsync_generator hvsync(
      .clk(clk_25),
      .vga_h_sync(hsync_out),
      .vga_v_sync(vsync_out),
      .CounterX(CounterX),
      //.CounterY(CounterY),
      .inDisplayArea(inDisplayArea)
    );

    always @(posedge clk_25)
    begin
      if (inDisplayArea)
        pixel <= CounterX[9:6];
      else // if it's not to display, go dark
        pixel <= 3'b000;
    end

endmodule

