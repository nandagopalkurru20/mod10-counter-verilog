`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2026 19:34:04
// Design Name: 
// Module Name: counter_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module counter_tb;

reg clk, reset;
wire [3:0] y;

mod10 UUT (
    .clk(clk),
    .reset(reset),
    .y(y)
);

initial
begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial
begin
    reset = 1;
    #10;
    reset = 0;

    #100;
    $finish;
end

initial
begin
    $monitor($time, " reset=%b y=%b", reset, y);
end

endmodule
