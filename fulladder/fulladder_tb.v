`include "fulladder.v"
`timescale 1ns / 1ps

module fulladder_tb;
reg a,b,cin;
wire sum,out;
fulladder aud1(a,b,cin,sum,out);
initial begin 
$dumpfile("fulladder_tb.vcd");
$dumpvars(0,fulladder_tb);

a=0; b=0; cin=0; #10;
a=0; b=0; cin=1; #10;
a=0; b=1; cin=0; #10;
a=0; b=1; cin=1; #10;
a=1; b=0; cin=0; #10;
a=1; b=0; cin=1; #10;
a=1; b=1; cin=0; #10;
a=1; b=1; cin=1; #10;

end 
initial $monitor("time=%g,a=%d,b=%b,cin=%d,sum=%d,out=%d",$time,a,b,cin,sum,out);
initial #120 $finish;
endmodule