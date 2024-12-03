`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/02 14:51:32
// Design Name: 
// Module Name: register
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


`timescale 1ns / 1ps

module register(
    input               in_clk, 
    input               in_rst, 
    input               in_wena, 
    input [31:0]        in_data, 
    output reg [31:0]   out_data 
    );
	
    always@(negedge in_clk or posedge in_rst)
    begin
        if(in_rst) 
            out_data <= 32'b0;
        else if(in_wena) 
            out_data <= in_data;
    end

endmodule
