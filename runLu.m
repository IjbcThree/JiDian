clc;
clear;
fsize=1.5;
psize=15;
tsn = [0,3000];
ini1 = [1.618    -1.618  1.618];
ini2 = [-1.69,1,0.1]*1e-6;
ini3 = [-1.68,1,0.11]*1e-6;

%  three negative Lyapunov exponents
[t,e] = ode45(@Lu,tsn,ini1,'AbsTol',169,0.4,100,0.70,10);
% [t,e] = ode45(@Lu,tsn,ini2,'AbsTol',169,0.4,100,0.70,10);

% two positive Lyapunov exponents and one negative Lyapunov exponent
% [t,e] = ode45(@Lu,tsn,ini1,'AbsTol',168,0.4,100,0.70,11);
% [t,e] = ode45(@Lu,tsn,ini3,'AbsTol',168,0.4,100,0.70,11);

plot3(e(:,1),e(:,2),e(:,3),'m');
axis auto square
grid on
xlabel('x','FontSize',psize),ylabel('y','FontSize',psize),zlabel('z','FontSize',psize);



