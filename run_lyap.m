clc;
clear;
[T,Res]=lyapunov(3,@lu_ext,@ode45,0,0.5,300000,[1.618,-1.618,1.618],1000);
% [T,Res]=lyapunov(3,@lorenz_ext,@ode45,0,0.5,300000,[-1.69,1,0.1]*1e-6,1000);
% [T,Res]=lyapunov(3,@lorenz_ext,@ode45,0,0.5,300000,[1.618    -1.618  1.618],1000);
% [T,Res]=lyapunov(3,@lorenz_ext,@ode45,0,0.5,300000,[-1.68,1,0.11]*1e-6,1000);


% for the fitst case type following code in command window of matlab

% >> plot(T,Res(:,1:2));
% axis([-inf inf -1 0])
% gtext('L_1 = -0.413836'),gtext('L_2 =  -0.665571');
% xlabel('t'); ylabel('Lyapunov exponents');
% >> plot(T,Res(:,3));
% axis([-inf inf -16 -15])
% gtext('L_3 = -15.585697');
% xlabel('t'); ylabel('Lyapunov exponents');


% for the other three cases, type the similar codes.

