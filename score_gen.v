
module score_gen(scoreOut, CounterX, CounterY, num, clock, xOffset2
    );
input clock;
input [3:0] num;
input [8:0] CounterY;
input [9:0] CounterX;
output reg scoreOut;
input [9:0] xOffset2;
wire pixelOn;
wire yPos;
wire xPos;
reg signed [9:0] xOffset;


always @(posedge clock)
begin
	xOffset <= xOffset2;
case (num)
	4'b0000: scoreOut = (CounterX <360+xOffset && CounterX>330+xOffset && (CounterY> 50 && CounterY < 55)) // top
	|| ((CounterX>355+xOffset && CounterX < 360+xOffset) && (CounterY>50 && CounterY<100)) // right_side
	|| ((CounterX<360+xOffset && CounterX>330+xOffset) && (CounterY>95 && CounterY<100)) //bottom_side
	|| ((CounterX>330+xOffset && CounterX<335+xOffset) && (CounterY>50 && CounterY<100)); // left_side
	4'b0001: scoreOut = (CounterX <346+xOffset && CounterX> 342+xOffset) && (CounterY >50 && CounterY < 100);
	4'b0010: scoreOut = (CounterX < 360+xOffset && CounterX>330+xOffset && (CounterY> 50 && CounterY <55)) //top
	|| ((CounterX>355+xOffset && CounterX <360+xOffset) && (CounterY>50 && CounterY<75)) //right side
	|| ((CounterX<360+xOffset && CounterX>330+xOffset) && (CounterY>70 && CounterY<75)) //mid piece
	|| ((CounterX>330+xOffset && CounterX<335+xOffset) && (CounterY>73 && CounterY<100)) //left side
	|| ((CounterX<360+xOffset && CounterX>330+xOffset) && (CounterY>95 && CounterY<100));
   4'b0011: scoreOut = (CounterX < 360+xOffset && CounterX>330+xOffset && (CounterY> 50 && CounterY <55)) //top
	|| ((CounterX>355+xOffset && CounterX <360+xOffset) && (CounterY>50 && CounterY<75)) //right side
	|| ((CounterX<360+xOffset && CounterX>330+xOffset) && (CounterY>70 && CounterY<75)) //mid piece
	|| ((CounterX>355+xOffset && CounterX <360+xOffset) && (CounterY>74 && CounterY<99)) //left side
	|| ((CounterX<360+xOffset && CounterX>330+xOffset) && (CounterY>95 && CounterY<100));
	4'b0100: scoreOut = ((CounterX>355+xOffset && CounterX <360+xOffset) && (CounterY>50 && CounterY<100)) //right side
	|| ((CounterX<360+xOffset && CounterX>330+xOffset) && (CounterY>70 && CounterY<75)) //mid piece
	|| ((CounterX>330+xOffset && CounterX<335+xOffset) && (CounterY>50 && CounterY<75)); //left side
	4'b0101: scoreOut = (CounterX < 360+xOffset && CounterX>330+xOffset && (CounterY> 50 && CounterY <55)) //top
	|| ((CounterX>355+xOffset && CounterX <360+xOffset) && (CounterY>73 && CounterY<100)) //right side
	|| ((CounterX<360+xOffset && CounterX>330+xOffset) && (CounterY>70 && CounterY<75)) //mid piece
	|| ((CounterX>330+xOffset && CounterX<335+xOffset) && (CounterY>50 && CounterY<75)) //left side
	|| ((CounterX<360+xOffset && CounterX>330+xOffset) && (CounterY>95 && CounterY<100));
	4'b0110: scoreOut = (CounterX < 360+xOffset && CounterX>330+xOffset && (CounterY> 50 && CounterY <55)) //top
	|| ((CounterX>355+xOffset && CounterX <360+xOffset) && (CounterY>73 && CounterY<100)) //right side
	|| ((CounterX<360+xOffset && CounterX>330+xOffset) && (CounterY>70 && CounterY<75)) //mid piece
	|| ((CounterX>330+xOffset && CounterX<335+xOffset) && (CounterY>50 && CounterY<100)) //left side
	|| ((CounterX<360+xOffset && CounterX>330+xOffset) && (CounterY>95 && CounterY<100));
	4'b0111: scoreOut = (CounterX < 360+xOffset && CounterX>330+xOffset && (CounterY> 50 && CounterY <55)) //top
	|| ((CounterX>355+xOffset && CounterX <360+xOffset) && (CounterY>50 && CounterY<100)); //right side
	endcase		
end

endmodule
