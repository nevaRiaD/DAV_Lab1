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
    output logic [1:0] sign_op,
    output logic [19:0] result
    );
    
    always_comb begin
    sign_op = (sign << 1) + operation;
    case (sign_op)
       2'b00: begin // addition
          result = op1 + op2;
       end
       2'b01: begin // left shift 
          result = op1 <<< op2;
       end
       2'b10: begin // subtraction
          result = op1 - op2;
       end
       2'b11: begin // right shift arithmetic
          result = op1 >>> op2;
       end
       default: begin // if none of the other cases match
       end
    endcase
    
    end
endmodule
