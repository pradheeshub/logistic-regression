function [cost,gradient] = gradientDescent(x,y,theta,iter)
  m=length(y);
  hyp=sigmoid(x,theta);
  cost=-1/m*sum((y).*log(hyp)+(1-y).*log(1-hyp));
  gradient=zeros(size(theta));
  for i=1:iter;
   hyp=sigmoid(x,theta);
   gradient=gradient+(hyp(i)-y(i))*x(i,:)';
  endfor
  gradient=1/length(y)*gradient;
  
endfunction