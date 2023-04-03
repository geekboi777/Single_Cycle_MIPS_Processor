`timescale 1ns / 1ps

`include "SingleCycleCPU.v"
`include "alu_add.v"
`include "alu_control.v"
`include "alu.v"
`include "control_unit.v"
`include "data_memory.v"
`include "instruction_mem.v"
`include "mux_32bit.v"
`include "program_counter.v"
`include "register_file.v"
`include "shift_left2_branch.v"
`include "shift_left2_jump.v"
`include "sign_extend.v"


module singlecyclecpu_tb(   );

reg clk,reset;
SingleCycleCPU dut(clk, reset);

initial
begin
clk=0;
reset=0;
#1 reset=1;
#10 reset=0;
#200 $finish;
end
always begin
 #5 clk=~clk;
 end
 initial begin
 	$dumpfile("dump.vcd");
 	$dumpvars(0,dut);
 	end
 	
// $dumpfile("dump.vcd");
// 
// reg     [31:0]  registers [31:0];
// generate
//   genvar idx;
//   for(idx = 0; idx < 32; idx = idx+1) begin: register
//     wire [31:0] tmp;
//     assign tmp = registers[idx];
// 
// $dumpvars(0,tmp);
// end
endmodule
