module d_latch(
    input D, E,
    output reg Q, 
    output NotQ
);
  
// E - enable
// D - Data
  
// Will contain D-Latch behavior
always @(E, D) begin 
  if (E)
    Q <= D; 
  end

assign NotQ = ~Q;

endmodule
