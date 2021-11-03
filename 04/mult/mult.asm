// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
@2    // r2=0(歸0)
M=0
@0   //r0=M 
D=M
@21  //IF r0=0 , 跳至 r21結束  0*任何數=0
D;JEQ 
@1  //r1=M
D=M
@3
M=D //計算次數(最後會歸0)
@21 //IF r1=0,跳至 r21結束 任何數*0=0
D;JEQ
@14 //LOOP 
D;JNE
@0
D=M
@2
M=M+D // 相加x次(乘法)
@3
M=M-1
D=M
@12 //LOOP
D;JNE
@21 //卡迴圈
0;JMP
