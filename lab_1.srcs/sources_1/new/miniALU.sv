`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2025 02:46:01 PM
// Design Name: 
// Module Name: miniALU
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


module miniALU(
    input logic [3:0] op1,
    input logic [3:0] op2,
    input logic sign,
    input logic operation,
    output logic [19:0] result
    );
    
    always_comb begin
    if (operation == 1'b1) begin // shift
        if (sign == 1'b1) begin // arithmetic right shift
            result = {16'b0, op1} >>> op2;
        end
        else begin              // arithmetic left shift
            result = {16'b0, op1} <<< op2;
        end
    end
    else begin // add
        if (sign == 1'b1) begin // subtract
            result = {16'b0, op1} - {16'b0, op2};
        end
        else begin              // add
            result = {16'b0, op1} + {16'b0, op2};
        end
    end
    
    end
endmodule
