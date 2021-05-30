`timescale 1ps/1ps
`include "Mux16to1.v"

module Mux16to1_tb;
reg [15:0]A; reg[3:0]S; wire F;
multiplexer M(.in(A),.sel(S),.out(F));

initial begin
    $dumpfile("mux16to1.vcd");
    $dumpvars(0,Mux16to1_tb);
    $monitor($time,"A=%h, S=%h, F=%h",A,S,F);
    #5 A=16'h3f0a; S=4'h0;
    #5 S=4'h1;
    #5 S=4'h6;
    #5 S=4'hc;
    #5 $finish;
    $display("Test complete");

end
endmodule //Mux16to1_tb