clc
clear all
X=xlsread('PROJECT_STATICS.xlsx','20 VALIDATE INPUT');
Y=xlsread('PROJECT_STATICS','20 VALIDATE OUTPUT');
[RS]=computeR(X,Y);
filename = 'PROJECT_STATICS.xlsx';
xlswrite(filename,RS,'matlab mimo output tota 20');
