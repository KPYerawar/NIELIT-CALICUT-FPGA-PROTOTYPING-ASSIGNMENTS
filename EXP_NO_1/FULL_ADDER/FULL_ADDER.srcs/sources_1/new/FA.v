`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2026 06:28:53 PM
// Design Name: 
// Module Name: FA
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


module FA(
A,B,Cin,SUM,CARRY
    );
    input A;
    input B;
    input Cin;
    output SUM ;
    output CARRY;
    
    assign SUM = A ^ B ^ Cin ;
    assign CARRY = (A&B) | (B&Cin) | (A&Cin) ;
endmodule
