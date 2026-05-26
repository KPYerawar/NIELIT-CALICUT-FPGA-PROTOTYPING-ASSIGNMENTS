`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2026 05:59:43 PM
// Design Name: 
// Module Name: all_gates
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


module all_gates(
IN1 ,IN2,OR1,AND1,NAND1,XOR1,NOTIN1,NOR1,XNOR1
    );
    input IN1;  // 1st input 
    input IN2;  //2nd input
    output OR1; // or gate output 
    output AND1; //and gate output 
    output NAND1;  //nand gate output 
    output XOR1;  //xor gate output
    output NOTIN1;   //not gate output 
    output NOR1;  //nor gate output 
    output XNOR1;
    
    assign OR1 = IN1 | IN2;
    assign AND1 = IN1 & IN2;
    assign NAND1 = ~(IN1 & IN2);
    assign XOR1 = IN1 ^ IN2;
    assign NOTIN1 = ~IN1 ;
    assign NOR1 = ~(IN1 | IN2);
    assign XNOR1 = ~(IN1 ^ IN2);
endmodule
