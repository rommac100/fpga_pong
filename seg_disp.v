module seg_disp(inNum, oSEG
    );
	 input [3:0] inNum;
	 output [10:0] oSEG;
	 reg [10:0] oSEG;
	always @(inNum)
	begin
			case(inNum)  //dpGFEDCBAEN 
			4'h1: oSEG = 11'b11111001011;	// ---t----
			4'h2: oSEG = 11'b10100100011; 	// |	    |
			4'h3: oSEG = 11'b10110000011; 	// lt	   rt
			4'h4: oSEG = 11'b10011001011; 	// |	    |
			4'h5: oSEG = 11'b10010010011; 	// ---m----
			4'h6: oSEG = 11'b10000010011; 	// |	    |
			4'h7: oSEG = 11'b11111000011; 	// lb	   rb
			4'h8: oSEG = 11'b10000000011; 	// |	    |
			4'h9: oSEG = 11'b10011000011; 	// ---b----
			4'ha: oSEG = 11'b10001000011;
			4'hb: oSEG = 11'b10000011011;
			4'hc: oSEG = 11'b11000110011;
			4'hd: oSEG = 11'b10100001011;
			4'he: oSEG = 11'b10000110011;
			4'hf: oSEG = 11'b10001110011;
			4'h0: oSEG = 11'b11000000011;
			endcase
	end
endmodule

