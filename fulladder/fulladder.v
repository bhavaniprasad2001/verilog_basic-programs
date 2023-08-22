module fulladder(a,b,cin,sum,out);
input a, b, cin;
output reg sum, out;
always @(*)
begin
 sum = a ^ b ^ cin;
 out = (a & b)|(cin&b) |(cin&a);

 end

endmodule