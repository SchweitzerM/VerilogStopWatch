module seven_seg_decoder (input [3:0] x, output[6:0] hex_LEDs);
reg [6:2] top_5_segments;
  
	assign hex_LEDs[0] = (x[0]&~x[1]&~x[2]&~x[3]) | (~x[0]&~x[1]&x[2]&~x[3]) | (~x[0]&~x[1]&x[2]&x[3]) | (x[0]&~x[1]&x[2]&x[3]) | (~x[0]&x[1]&x[2]&x[3]);
	assign hex_LEDs[1] = (x[0]&~x[1]&x[2]&~x[3]) | (~x[0]&x[1]&x[2]&~x[3]) | (~x[0]&~x[1]&x[2]&x[3]) | (x[0]&~x[1]&x[2]&x[3]) | (~x[0]&x[1]&x[2]&x[3]) | (x[0]&x[1]&x[2]&x[3]);
	assign hex_LEDs[6:2] = top_5_segments[6:2];
	
	always@(x) 
		case(x)
			0:top_5_segments = 5'b10000;//00001;
			1:top_5_segments = 5'b11110;//b01111;
			2:top_5_segments = 5'b01001;//10010;
			3:top_5_segments = 5'b01100;//00110;
			4:top_5_segments = 5'b11010;//01011;
			5:top_5_segments = 5'b00100;//00100;
			6:top_5_segments = 5'b00000;
			7:top_5_segments = 5'b11110;//01111;
			8:top_5_segments = 5'b00000;
			9:top_5_segments = 5'b00110;//01100;
			10:top_5_segments = 5'b10010;//01001;
			11:top_5_segments = 5'b00010;//01000;
			12:top_5_segments = 5'b00011;//11000;
			13:top_5_segments = 5'b00011;//11000;
			14:top_5_segments = 5'b00010;//01000;
			15:top_5_segments = 5'b00001;//10000;
		endcase  
endmodule

