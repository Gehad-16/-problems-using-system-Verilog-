module gates(input logic [3:0] a, b, output logic [3:0] y1, y2, y3, y4, y5); 
always_comb
begin
 y1=a & b;
 y2=a | b;
 y3=a ^ b; 
 y4=~(a & b);
 y5=~(a | b);
 end endmodule
 
 module test_gates;
   reg A,B;
   wire Y1 , Y2 , Y3 , Y4 , Y5;
   
   initial
   begin
     $monitor ("in1=%b , in2=%b, out1=%b ,out2=%b ,out3=%b ,out4=%b ,out5=%b", A , B ,Y1 , Y2 , Y3 , Y4 , Y5);
   #10 
   A=0 ; B=0;
   #10 
   A=1; B=1;
   #10
   A=0 ; B=1; 
   
   end
   gates G1(A , B ,Y1 , Y2 , Y3 , Y4 , Y5);
   
   endmodule
