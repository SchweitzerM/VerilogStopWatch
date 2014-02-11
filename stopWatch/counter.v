module counter(input clk_en, input pause, input reset, output wire [31:0]counter);
	reg[1:0] running = 2'b01;
	reg [31:0]count;
	assign counter = count;
	
	always@(posedge clk_en or posedge reset or posedge pause)
		begin
			if(reset)
				begin
					count = 0;
				end
			if(pause)
				begin
				end
			else
				begin
					count = count+1;
				end
			
		end
		
endmodule