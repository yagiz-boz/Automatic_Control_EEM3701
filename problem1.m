clc;
clear;

syms s t Y %Symbolic Variables

% Initial Conditions

y0=1;
dy0=0;

% Input r(t) = 1
R = 1/s;
% Laplace-domain equation
eqn = (s^2*Y - s*y0 - dy0) ...
    + 4*(s*Y - y0) ...
    + 3*Y == 2*R;

% Solve for Y(s) 
Ys = solve(eqn, Y);

disp('Y(s) =');
partfrac(Ys,s)
yt = ilaplace(Ys, s, t);

disp('y(t) =');
pretty(yt)