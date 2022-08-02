module iiitb_icg_tb();
    reg in, clk, d0, d1;
    wire q0, q1,cgclk, q_l;
    
    iiitb_icg test (.in(in), .clk(clk), .d0(d0), .d1(d1), .q0(q0), .q1(q1),.cgclk(cgclk), .q_l(q_l));
    initial 
    begin
    
    in = 0;
    d0 = 0;
    d1 = 0;
    clk = 0;
    //en=0;
    
    $dumpfile("test.vcd");
	$dumpvars(1);
	#200 $finish;
	end
	
	always #8 in<=~in;
	//always #5 en<=~en;
	always #5 d0<=~d0;
	always #7 d1<=~d1;
	always #3 clk=~clk;
	
endmodule
