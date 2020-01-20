function g= sigmoid(x,theta)
  z=x*theta;
  g = zeros(size(z));
  g=1./(1+e.^(-z));
endfunction
