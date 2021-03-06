
`timescale 1ns / 1ps
module program_counter(
    input [11:0] pc_in,
    input clk,
    input rst,
    input enable,
    output reg [11:0] pc
    );

    initial begin
        pc = 0;
    end

    
    always @(posedge clk) begin
        if(rst) begin
            pc <= 0;
        end else if(enable) begin
            pc <= pc_in; 
        end 
    end
    

endmodule 