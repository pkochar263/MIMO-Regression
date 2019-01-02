clc
clear all
X=xlsread('MIMODATA','INPUT');
Y=xlsread('MIMODATA','OUTPUT');
P=size(X);
Q=size(Y);
r=P(1,1); 
n=Q(1,2); 
Z=inv(X'*X);
B=Z*(X'*Y);
for i=1:1:n;
    C=B(:,i);
    YP=X*C;
    YN=Y(:,i);
    E=YN-YP;
    RES=E.^2;
    SSE=sum(RES);
    GDM=sum(YN)/r;
    GDMM(1:r,1)=GDM;
    SR=(YP-GDMM).^2;
    SSR=sum(SR);
    RS=(SSR)/(SSR+SSE)
    subplot(n,1,i)
    scatter(YN,YP);  
end