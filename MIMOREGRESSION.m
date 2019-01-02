clc
clear all
X=xlsread('3-IN');
Y=xlsread('3-OUT');
Z=inv(X'*X);

%BETA MATRIX
B=Z*(X'*Y);

%PREDICTED Y VALUE
YP=X*B;
%ERROR Y- Ypredicted
E=Y-YP;

%ERROR SQUARE
ES=E.^2;
SSE=sum(ES(:,1));

%GIVEN DATA MEAN
GDM=(sum(Y(:,1)))/10;

%CONVERTING DATA MEAN MATRIX TO 10X1 MATRIX 
DMM(1:10,1)=GDM;
%REGRESSION SQUARE 
SR=(YP-DMM).^2;

%SUM OF SQUARE REGRESSION
SSR=sum(SR(:,1));

%R SQUARE VALUE
RS=(SSR)/(SSR+SSE);
%PLOT(OUTPUT VS REGRESSION PLOT)
plot(Y,YP)
axis equal