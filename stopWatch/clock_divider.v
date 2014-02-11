module clock_divider(input wire clock, input reset, output wire clk_en); 
reg [15:0] counter;

always @(posedge clock or posedge reset) 
begin
	if(reset)
		begin
			counter<=16'b0000000000000000;
		end
	else
		begin
			if(counter == 16'b1100001101001111) //divide by 10(every 10 posedge clock inputs generate an output)
				begin 
					counter<=16'b0000000000000000; //reset the counter to start over
				end
			else
				begin		
					counter<=counter+16'b1; //increment counter
				end
		end
end


assign clk_en = (counter == 16'b0000000000000000); //output a posedge only if counter is reset
endmodule