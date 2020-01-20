function plotData(x,y)
figure(1);
hold on;
  y1=find(y==1);
  y2=find(y==0);
  plot(x(y1,1),x(y1,2),'k+', 'LineWidth', 2, 'MarkerSize', 10);
  plot(x(y2,1),x(y2,2),'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
 
endfunction
