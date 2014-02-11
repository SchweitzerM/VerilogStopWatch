module lab2 (input CLOCK_50, input [17:0] SW, output wire [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7);
wire counterToBCD;
wire clockToCounter;
reg [3:0] d0,d1,d2,d3,d4,d5,d6,d7;//digit

clock_divider (CLOCK_50, SW[4:4], clockToCounter);
counter(clockToCounter, SW[0:0],SW[1:1], counterToBCD);
hex_to_bcd_converter (CLOCK_50, SW[3:3], counterToBCD);

 seven_seg_decoder (d0, HEX0);
 seven_seg_decoder (d1, HEX1);
 seven_seg_decoder (d2, HEX2);
 seven_seg_decoder (d3, HEX3);
 seven_seg_decoder (d4, HEX4);
 seven_seg_decoder (d5, HEX5);
 seven_seg_decoder (d6, HEX6);
 seven_seg_decoder (d7, HEX7);



endmodule