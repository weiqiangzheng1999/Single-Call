clear
clc

%% variables    
syms  x [1 4]
syms  u [1 4]
syms  y [1 4]
 

%% substitute x(3) and x(4) by definitions
x(3) = x(2) - y(1) - u(2);
x(4) = x(2) - y(3) - u(4);

%% LHS
LHS = (y(2) + u(2))^2 + (y(2) - y(1))^2;
LHS = LHS - (y(4) + u(4))^2 - (y(4) - y(3))^2;
LHS = LHS - 2 * (y(4) - y(2))*(x(4) - x(2));
LHS = LHS - 2 * (1/4*(x(4) - x(3))^2 - (y(4) - y(3))^2);
LHS = LHS - 2 * (u(4) - u(2))*(x(4) - x(2));

%% RHS
RHS = ((x(3) - x(4))/2 + y(1) - y(2))^2;
RHS = RHS + ((x(3) + x(4))/2 - x(2) + y(2) + u(2) )^2;

%% identity 1
display(simplify(LHS-RHS))