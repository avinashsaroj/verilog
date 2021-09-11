`timescale 1ns / 1ps
`include "tlc.v"
module Traffic_Light_Controller_TB;
reg clk,rst;
wire [2:0]light_M1;
wire [2:0]light_S;
wire [2:0]light_MT;
wire [2:0]light_M2;
Traffic_Light_Controller dut(.clk(clk) , .rst(rst) , .light_M1(light_M1) , .light_S(light_S)  ,.light_M2(light_M2),.light_MT(light_MT)   );
initial
begin
    clk=1'b0;
    forever #(1000000000/2) clk=~clk;
end
//    initial
//    $stop;//to add ps
initial
begin
    $monitor($time,"clk=%b, rst=%b, light_M1=%b, light_S=%b, light_M2=%b, light_MT=%b",clk,rst,light_M1,light_S, light_M2, light_MT);
    $dumpfile("tlc.vcd");
    $dumpvars(0);
    rst=0;
    #1000000000;
    rst=1;
    #1000000000;
    rst=0;
    #(1000000000*200);
    $finish;
    end




endmodule