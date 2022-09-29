clear
clc

%% variables
syms q;
syms k;
syms p; 
syms x0;
syms  x [1 4]
syms  u [1 4]
syms  y [1 4]
 

%% substitute x(3) and x(4) by definitions
x(3) = x(2) - y(1) - u(2) + 1/(k+1)*(x0 - x(2));
x(4) = x(2) - y(3) - u(4) + 1/(k+1)*(x0 - x(2));

%% LHS
LHS = k*(k+1)/2 * ((y(2) + u(2))^2 + (y(2) - y(1))^2) + k * (y(2) + u(2))*(x(2) - x0);
LHS = LHS - (k+1)*(k+2)/2 * ((y(4) + u(4))^2 + (y(4) - y(3))^2) - (k+1) * (y(4) + u(4))*(x(4) - x0);
LHS = LHS - k*(k+1) * (y(4) + u(4) - y(2) - u(2))*(x(4) - x(2));
LHS = LHS - k*(k+1)/4/q * (q*(x(4) - x(3))^2 - (y(4) - y(3))^2);

%% RHS
RHS = k*(k+1)/4*(u(4) - u(2) + y(1) - 2*y(2) + y(3))^2;
RHS = RHS + ((1-4*q)*k - 4*q)/(4*q)*(k+1) * (y(3) - y(4))^2;
RHS = RHS + (k+1)*(y(3) - y(4))*(y(4) + u(4));
%% identity 2
display(simplify(LHS-RHS))