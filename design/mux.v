module mux (
  input  wire     a  ,
  input  wire     b  ,
  input  wire     sel,
  output  reg     out
);

assign out = sel? a:b; 

endmodule
