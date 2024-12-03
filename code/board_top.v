`timescale 1ns / 1ps

module board_top(
    input           clk,
    input           rst,
    input           ena,
    input  [1:0]    switch,
    output [7:0]    o_seg,
    output [7:0]    o_sel
    );

    wire [31:0] display_data;
    wire [31:0] pc, instr;
    wire [31:0] out_reg6;
    wire [31:0] out_reg7;
    wire [31:0] out_reg15;
    wire [31:0] out_reg16;

    wire        clk_cpu;
    reg [20:0]  clk_div;
    wire        new_clk;
    
    clk_divider #(2000000) clk_divider_uut( //下板用， sim时改为较小值
    .in_clk(clk),
    .stop(ena),
    .out_clk(new_clk)

    );
    
    mux4_32 mux_display(out_reg6, out_reg7, out_reg15, out_reg16, switch, display_data);

    seg7x16 seg7x16_inst(clk, rst, 1'b1, display_data, o_seg, o_sel);

    cpu cpu_inst(new_clk, rst, 1'b1, pc, instr, out_reg6, out_reg7, out_reg15, out_reg16);

endmodule