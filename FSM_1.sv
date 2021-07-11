module FSM_1(input logic clk, 
             input logic a, 
             output logic out1, out2 ,
             input logic reset);                           
 logic state , n_state;
// sequential
 // register 
always_ff @(posedge clk , posedge reset ) 
if (reset)
state<=1'b0;
else
state <=n_state;
// next state logic
always_comb

case (state)
1'b0: if(a) n_state = 1'b1;
      else n_state = 1'b0;
1'b1: if(~a) n_state = 1'b0;
      else n_state = 1'b1;
endcase
//to output

always_comb
begin
if(state == 0)
 {out1 , out2 }= {1'b1,1'b0} ;
else
 {out1 , out2 }= {1'b0,1'b1} ;
   
end
endmodule
