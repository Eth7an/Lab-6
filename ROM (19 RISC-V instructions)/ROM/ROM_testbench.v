module ROM_testbench();

	reg [4:0] address;
	reg enable;
	wire [31:0] out;

	ROM DUT(.address(address), .out(out), .enable(enable));
	
	initial begin
		address <= 5'b00000;
		enable <= 0;
	end
	
	integer i;
	initial begin
		#20
		for(i = 0; i < 20; i = i + 1)
			#10 address <= address + 1;
	end
	
	always begin
		#10 enable <= 1;
		
		#220 enable <= 0;
		
		#10 $stop;
	end

endmodule
