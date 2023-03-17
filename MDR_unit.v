module MDR_unit (input [31:0]Mdatain, BusMuxOut, input Read, clr, clk, MDRin, output [31:0] Q);
	
wire [31:0] D, temp;

MDMux MDMux_inst(.Read(Read), .BusMuxOut(BusMuxOut), .MDatain(MDatain), .MDXout(D));

//module MDR (MDXout, clr, clk, MDRin, MDRout);

MDR MDR_inst(.MDXout(D), .clr(clr), .clk(clk), .MDRin(MDRin), .MDRout(temp));


assign Q = temp;

endmodule