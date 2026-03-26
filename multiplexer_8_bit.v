module multiplexer_8_bit (
    input [7:0] A, B, C, D,
  input [1:0] sel,
    output [7:0] Out 
);

  assign Out = (sel == 2'b00 ? A : 
                  sel == 2'b01 ? B : 
                  sel == 2'b10 ? C : 
                                 D); 

endmodule
