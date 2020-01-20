clear;
close all;
clc
data=load('inputTrainingSet1.txt');
x=data(:,[1,2]);
y=data(:,3);
iter=100;
alpha=0.01;
plotData(x,y);
[m,n]=size(x)
x=[ones(m,1),x];
theta=zeros((n+1),1);
[cost,gradient]=gradientDescent(x,y,theta,iter);
options=optimset('GradObj','on','MaxIter',400);
[theta,cost] = fminunc(@(t)(gradientDescent(x,y,t,iter)), theta, options);
fprintf('Cost at theta found by fminunc: %f\n', cost);
fprintf('theta: \n');
fprintf(' %f \n', theta);
plotDecisionBoundary(theta, x, y);




