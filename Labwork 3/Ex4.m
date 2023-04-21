clc;
clear all ;
close all;
x = -3:1:3;
y = -3:1:3;
[X, Y] = meshgrid(x,y);
Z = peaks(X,Y);
figure
surf(X,Y,Z);
title('3D Surface');
