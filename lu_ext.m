function f=lu_ext(t,X)
%
%Lu_like equation
% f(1)=a*(y-x)+d*x*z;
% f(2)=c*x-x*z+b*y;
% f(3)=-e*x^2+x*y+k*z;
%

%        See:
%    K. Ramasubramanian, M.S. Sriram, "A comparative study of computation 
%    of Lyapunov spectra with different algorithms", Physica D 139 (2000) 72-86.
%
% --------------------------------------------------------------------
% Copyright (C) 2004, Govorukhin V.N.


% Values of parameters

% three negative Lyapunov exponents
 
 a = 169; d = 0.4; c = 0; b = 100;  e=0.7; k=10;
 
% two positive Lyapunov exponents and one negative Lyapunov exponent 
 
% a = 168; d = 0.4; c = 0; b = 100;  e=0.7; k=11;


x=X(1); y=X(2); z=X(3);

Y= [X(4), X(7), X(10);
    X(5), X(8), X(11);
    X(6), X(9), X(12)];

f=zeros(9,1);

f(1)=a*(y-x)+d*x*z;
f(2)=c*x-x*z+b*y;
f(3)=-e*x^2+x*y+k*z;

%Linearized system

 Jac=[-a+d*z,     a,        d*x;
      c-z,    b,            -x;
      -2*e*x+y,  x,        k];
  
%Variational equation   
f(4:12)=Jac*Y;

%Output data must be a column vector


