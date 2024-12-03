`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/03 14:43:21
// Design Name: 
// Module Name: clk_divider
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


module clk_divider(
    input in_clk,
    input stop,
    output reg out_clk = 0

    );
    parameter k = 20;
    integer cnt = 0;
    always @(posedge in_clk)
    begin
        if(stop ==1)
            cnt = (cnt + 1) % (k / 2);
        else
            cnt = cnt;
        if(cnt == 0)
        out_clk <= ~out_clk;
    end
endmodule
