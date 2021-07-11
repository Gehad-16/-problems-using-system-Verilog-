module EX_42(input logic reset , clk , x ,
                    output logic out);
 enum logic [1:0] {s0 , s1 , s2 , s3}
 state , n_state;

always_ff @(posedge clk , posedge reset )
if (reset) state <=s0;
else       state <=n_state;

always_comb
case (state)
s0: if (x) n_state =s3;
    else   n_state =s1;	
s1: if (x) n_state =s2;
    else   n_state =s0;	
s2: 	     n_state =s1;
s3: 	     n_state =s1;
endcase

assign out = state[0] | state[1] ;
endmodule
