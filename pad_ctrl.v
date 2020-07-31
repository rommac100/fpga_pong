module pad_ctrl(player_input,CounterX, CounterY, clock, pixelOut, hit,scoreLeft,scoreRight, round
    );
input [3:0] player_input;
input clock;
input [9:0] CounterX;
input [8:0] CounterY;
output reg pixelOut;
output reg hit;

output reg[2:0] scoreLeft = 3'b000;
output reg[2:0] scoreRight = 3'b000;

output reg[1:0] round;



parameter pad_size_x = 10;
parameter pad_size_y = 50;
parameter y_start = 50;

parameter x_start = 10;
reg [8:0] y_pos_bar_top = 10;

parameter x_start_bar_2 = 610;
reg [8:0] y_pos_bar_top_2 = 10;


parameter ball_size = 8;
reg [9:0] x_ball_pos = 300;
reg [8:0] y_ball_pos = 300;
reg [2:0] x_ball_vel =1;
reg [2:0] y_ball_vel =1; 
reg x_ball_dir = 1; // 1 = + , 0 == -
reg y_ball_dir = 1; // 1 = + , 0 == -



reg update;
reg [1:0]update2 = 0'b00;
reg hit_reset =0;

always @(posedge clock) update <= (CounterY==500) && (CounterX==0);

always @(posedge clock)
begin
	if (update)
	begin
	if (!player_input[0] && y_pos_bar_top_2 >=10)
	y_pos_bar_top_2 <= y_pos_bar_top_2 - 10;
	if (!player_input[1] && y_pos_bar_top_2 < 500-pad_size_y)
	y_pos_bar_top_2 <= y_pos_bar_top_2 + 10;
	end
end

always @(posedge clock)
begin
	if (update)
	begin
	if (!player_input[2] && y_pos_bar_top >=10)
	y_pos_bar_top <= y_pos_bar_top - 10;
	if (!player_input[3] && y_pos_bar_top < 500-pad_size_y)
	y_pos_bar_top <= y_pos_bar_top + 10;
	end
end

always @(posedge clock)
begin
//used for the sound byte so that it lasts 3 refreshes of the screen.
	   if (update)
		begin
		if (x_ball_dir == 1)
		x_ball_pos <= x_ball_pos +x_ball_vel;
		if (x_ball_dir == 0)
		x_ball_pos <= x_ball_pos - x_ball_vel;
		if (y_ball_dir ==1)
		y_ball_pos <= y_ball_pos + y_ball_vel;
		if (y_ball_dir ==0)
		y_ball_pos <= y_ball_pos - y_ball_vel;
		end

		if (update && hit_reset)
		begin
		update2 <= update2 +1;
		end
		
		if (update2 == 2'b11)
		begin
		update2 <= 0;
		hit_reset <=0;
		hit <= 0;
		end
	   //checks to see if the ball has collided with the left paddle
		if ((x_ball_pos > x_start && x_ball_pos<= x_start+pad_size_x) && (y_ball_pos > y_pos_bar_top && y_ball_pos+ball_size <y_pos_bar_top+pad_size_y))
		begin
			x_ball_dir <=1;
			x_ball_vel <= x_ball_vel <3 ? x_ball_vel + 1 : x_ball_vel;
			hit <= 1;
			update2 <= 2'b00;
			hit_reset <=1;
		end
		//check to see if the top of the paddle hit it.
		if ((x_ball_pos > x_start && x_ball_pos+ball_size <= x_start+pad_size_x))
		begin
		    if ((y_ball_pos <y_pos_bar_top-1 && y_ball_pos+ball_size-1> y_pos_bar_top))
			 begin
			 y_ball_dir <= 1;
			 x_ball_dir <= 1;
			 hit <= 1;
			 update2 <= 2'b00;
			 hit_reset <=1;
			 end
			 if ((y_ball_pos<y_pos_bar_top+pad_size_y+2) && (y_ball_pos+ball_size > y_pos_bar_top+pad_size_y))
			 begin
			 y_ball_dir <= 0;
			 x_ball_dir <= 1;
			 hit <= 1;
			 update2 <= 2'b00;
			 hit_reset <=1;
			 end
		end
		
		//check to see if the ball collided with the right paddle
		if ((x_ball_pos+ball_size < x_start_bar_2+pad_size_x && x_ball_pos+ball_size> x_start_bar_2+2) && (y_ball_pos > y_pos_bar_top_2 && y_ball_pos+ball_size <y_pos_bar_top_2+pad_size_y))
		begin
			x_ball_dir <=0;
			x_ball_vel <= x_ball_vel <3 ? x_ball_vel + 1 : x_ball_vel;
			hit <= 1;
			update2 <= 2'b00;
			hit_reset <=1;
		end
		//chepck to see if the top of the paddle hit it.
		if ((x_ball_pos+ball_size > x_start_bar_2-1 && x_ball_pos+ball_size <= x_start_bar_2+pad_size_x))
		begin
		    if ((y_ball_pos <y_pos_bar_top_2 && y_ball_pos+ball_size> y_pos_bar_top_2-2))
			 begin
			 y_ball_dir <= 1;
			 x_ball_dir <= 0;
			 hit <= 1;
			 update2 <= 2'b00;
			 hit_reset <=1;
			 end
			 if ((y_ball_pos-2<y_pos_bar_top_2+pad_size_y) && (y_ball_pos+ball_size > y_pos_bar_top_2+pad_size_y))
			 begin
			 y_ball_dir <= 0;
			 x_ball_dir <= 0;
			 hit <= 1;
			 update2 <= 2'b00;
			 hit_reset <=1;
			 end
		end
		
		//check to see if the ball has collided with the wall
		if ((x_ball_pos+ball_size >630))
		begin
		x_ball_pos <= 300;
		y_ball_pos <= 300;
		x_ball_vel <= 1;
		y_ball_vel <= 1;
		if (scoreLeft == 7)
		begin
		scoreLeft <= 0;
		scoreRight <=0;
		round <= round +1;
		end
		else
		scoreLeft <= scoreLeft +1;
		end
      if (y_ball_pos+ball_size > 470)
		begin
		y_ball_dir <= 0;
		y_ball_vel <= y_ball_vel <3 ? y_ball_vel + 1 : y_ball_vel;
		end
		if (x_ball_pos <7)
		begin
		x_ball_pos <= 300;
		y_ball_pos <= 300;
		x_ball_vel <= 1;
		y_ball_vel <= 1;
		if (scoreRight == 7)
		begin
		scoreRight <= 0;
		scoreLeft <= 0;
		round <= round +1;
		end
		else
		scoreRight <= scoreRight +1;
		end
		if (y_ball_pos <7)
		begin
		y_ball_dir <= 1;
		y_ball_vel <= y_ball_vel <3 ? y_ball_vel + 1 : y_ball_vel;
		end
	end

always @(posedge clock)
begin
	pixelOut <= ((CounterX > x_start && CounterX < x_start+pad_size_x) && (CounterY >= y_pos_bar_top+8 && CounterY <= y_pos_bar_top+pad_size_y))
	|| (CounterX > x_ball_pos && CounterX < x_ball_pos+ball_size && CounterY > y_ball_pos && CounterY < y_ball_pos+ball_size)
	|| ((CounterX > x_start_bar_2 && CounterX < x_start_bar_2+pad_size_x) && (CounterY >= y_pos_bar_top_2+8 && CounterY <= y_pos_bar_top_2+pad_size_y));
	
end

endmodule
