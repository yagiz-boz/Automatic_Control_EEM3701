clc;
clear;
close all;

%% Mass-Spring-Damper System
% M*y'' + B*y' + K*y = F(t)
%
% G(s) = Y(s) / F(s)
%      = 1 / (M*s^2 + B*s + K)

M = 1;      % kg
B = 4;      % N.s/m
K = 3;      % N/m

num = 1;
den = [M B K];

G = tf(num, den);

disp('Mass-Spring-Damper Transfer Function:');
G

%% Poles
disp('Poles:');
disp(pole(G));

%% Step Response
figure;
step(G);
grid on;
title('Mass-Spring-Damper Step Response');
xlabel('Time (s)');
ylabel('Displacement');