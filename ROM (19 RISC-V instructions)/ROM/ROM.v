module ROM(address, out, enable);

	input [4:0] address;
	input enable;
	output [31:0] out;
	
	reg [31:0] out;
		
	always @(*) begin
	
		if(enable) begin
		
			case(address)
				5'b00000 : out = 32'h00450693;
				5'b00001 : out = 32'h00100713;
				5'b00010 : out = 32'h00b76463;
				5'b00011 : out = 32'h00008067;
				5'b00100 : out = 32'h0006a803;
				5'b00101 : out = 32'h00068613;
				5'b00110 : out = 32'h00070793;
				5'b00111 : out = 32'hffc62883;
				5'b01000 : out = 32'h01185a63;
				5'b01001 : out = 32'h00162023;
				5'b01010 : out = 32'hfff78793;
				5'b01011 : out = 32'hffc60613;
				5'b01100 : out = 32'hfe0796e3;
				5'b01101 : out = 32'h00279723;
				5'b01110 : out = 32'h00f507b3;
				5'b01111 : out = 32'h0107a023;
				5'b10000 : out = 32'h00170713;
				5'b10001 : out = 32'h00468693;
				5'b10010 : out = 32'hfc1ff06f;
				default : out = 32'bz;
			endcase
		end else
			out = 32'bz;
		
	end

endmodule
