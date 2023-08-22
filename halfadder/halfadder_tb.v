`include "halfadder.v"


module halfadder_tb();

reg a,b;
wire sum,carry;
halfadder H1(a,b,sum,carry);
initial begin
$dumpfile("halfadder_tb.vcd");
$dumpvars(0,halfadder_tb);

a=0; b=0;#10;
end
always #1 b=b+1;
always #2 a=a+1;
initial $monitor("a=%b,b=%b,sum=%b,carry=%b",a,b,sum,carry);
initial #8 $finish;
endmodule



