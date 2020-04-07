function ydot=Lu(t,y,a,d,f,e,c)
% the model

ydot=[a*(y(2)-y(1))+d*y(1)*y(3);-y(1)*y(3)+f*y(2);-e*y(1)^2+y(1)*y(2)+c*y(3)];