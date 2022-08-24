`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:21:49 04/28/2022 
// Design Name: 
// Module Name:    dadda4 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
//main code
module dadda (a,b,op);
input [3:0] a,b;
output [7:0] op;
wire [3:0] p0,p1,p2,p3;
partial_product pp1(a[0],b,p0[0],p0[1],p0[2],p0[3]);
partial_product pp2(a[1],b,p1[0],p1[1],p1[2],p1[3]);
partial_product pp3(a[2],b,p2[0],p2[1],p2[2],p2[3]);
partial_product pp4(a[3],b,p3[0],p3[1],p3[2],p3[3]);
//1st stage 4 to 3
ha h1(p0[3],p1[2],s30,c30);
ha h2(p1[3],p2[2],s40,c40);
//2nd stage 3 to 2
ha h3(p0[2],p1[1],s20,c20);
FA f1(s30,p2[1],p3[0],s31,c31);
FA f2(p3[1],s40,c30,s41,c41);
FA f3(p2[3],p3[2],c40,s51,c51);
//3rd stage 2 to 1
ha h4(p0[1],p1[0],s60,c60);
FA f4(s20,p2[0],c60,s61,c61);
FA f5(s31,c20,c61,s70,c70);
FA f6(s41,c31,c70,s71,c71);
FA f7(s51,c41,c71,s80,c80);
FA f8(p3[3],c51,c80,s81,c81);
//op assign
assign op={c81,s81,s80,s71,s70,s61,s60,p0[0]};
endmodule
