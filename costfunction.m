function [J] = costfunction(x,y,theta)
  m=length(y);
  hyp=sigmoid(x,theta);
  J=-1/m*sum((y).*log(hyp)+(1-y).*log(1-hyp));
endfunction
