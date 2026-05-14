`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2026 19:19:50
// Design Name: 
// Module Name: counter
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

module mod10(
    input clk,
    input reset,
    output reg [3:0] y
);

always @(posedge clk or posedge reset)
begin
    if(reset)
        y <= 4'b0000;

    else if(y == 4'b1001)
        y <= 4'b0000;

    else
        y <= y + 1;
end

endmodule