// Pong VGA game
// (c) fpga4fun.com

module pong(clock, vga_h_sync, vga_v_sync, vga_R, vga_G, vga_B, player_input,AUDIO_L);
input clock;
output vga_h_sync, vga_v_sync;
output AUDIO_L;

wire inDisplayArea;
wire [9:0] CounterX;
wire [8:0] CounterY;
wire clk;

output reg[2:0] vga_R, vga_G;
output reg[1:0] vga_B;

wire padPos;

input [3:0] player_input; // order is 0th = lef_play_up, 1th = lef_play_dn, 2th = right_play_up, 3rd = right_play_dn 

wire scoreOutLeft,scoreOutRight;
reg [3:0] num = 4'b0000;

reg [3:0] update = 0'b0000;

reg signed [9:0] scoreleft_offset = -200;
reg signed [9:0] scoreright_offset = 100;

wire [3:0]leftScore;
wire [3:0]rightScore;

wire [1:0] round;

wire onSound;

pad_ctrl inst_pad(player_input,CounterX,CounterY,clk,padPos,onSound, leftScore,rightScore, round);

score_gen leftScoreGen(scoreOutLeft,CounterX,CounterY,leftScore,clk,scoreleft_offset);
score_gen rightScoreGen(scoreOutRight,CounterX,CounterY,rightScore,clk,scoreright_offset);

clock_inst instance_name (.CLKIN_IN(clock),.CLKFX_OUT(clk));
	 
hvsync_generator syncgen(.clk(clk), .vga_h_sync(vga_h_sync), .vga_v_sync(vga_v_sync), 
  .inDisplayArea(inDisplayArea), .CounterX(CounterX), .CounterY(CounterY));

square_wave_gen inst_wave(.clk(clk),.sq_wave(AUDIO_L),.on(onSound));

wire border = (CounterX[9:3]==0) || (CounterX[9:3]==79) || (CounterY[8:3]==0) || (CounterY[8:3]==59);

reg updateBallPosition = 1'b1;       // active only once for every video frame

always @(posedge clk)
begin
	case (round)
	2'b00:
	begin
   vga_R[0] <= ((scoreOutLeft || scoreOutRight || padPos) && inDisplayArea) || border;
	vga_G[0] <= ((scoreOutLeft || scoreOutRight || padPos) && inDisplayArea) || border;
	vga_B[0] <= ((scoreOutLeft || scoreOutRight || padPos) && inDisplayArea) || border;
	vga_R[1] <= ((scoreOutLeft || scoreOutRight || padPos) && inDisplayArea) || border;
	vga_G[1] <= ((scoreOutLeft || scoreOutRight || padPos) && inDisplayArea) || border;
	vga_B[1] <= ((scoreOutLeft || scoreOutRight || padPos) && inDisplayArea) || border;
	vga_R[2] <= ((scoreOutLeft || scoreOutRight || padPos) && inDisplayArea) || border;
	vga_G[2] <= ((scoreOutLeft || scoreOutRight || padPos) && inDisplayArea) || border;
	end
	2'b01:
	begin
   vga_R[0] <= ((scoreOutLeft || scoreOutRight || padPos) && inDisplayArea) || border;
	vga_G[0] <= ((scoreOutLeft || scoreOutRight || padPos) && inDisplayArea) || border;
	vga_B[0] <= ((scoreOutLeft || scoreOutRight || padPos) && inDisplayArea) || border;
	end
	2'b10:
	begin
	vga_R[1] <= ((scoreOutLeft || scoreOutRight || padPos) && inDisplayArea) || border;
	vga_G[1] <= ((scoreOutLeft || scoreOutRight || padPos) && inDisplayArea) || border;
	vga_B[1] <= ((scoreOutLeft || scoreOutRight || padPos) && inDisplayArea) || border;
	end
	2'b11:
	begin
	vga_R[1] <= ((scoreOutLeft || scoreOutRight || padPos) && inDisplayArea) || border;
	vga_G[1] <= ((scoreOutLeft || scoreOutRight || padPos) && inDisplayArea) || border;
	vga_B[1] <= ((scoreOutLeft || scoreOutRight || padPos) && inDisplayArea) || border;
	vga_R[2] <= ((scoreOutLeft || scoreOutRight || padPos) && inDisplayArea) || border;
	vga_G[2] <= ((scoreOutLeft || scoreOutRight || padPos) && inDisplayArea) || border;
	end
	endcase
end

endmodule