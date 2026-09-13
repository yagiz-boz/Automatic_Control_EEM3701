clc;
clear;
close all;

%% RC Low-Pass Circuit
% G(s) = Vo(s) / Vi(s) = 1 / (RCs + 1)

R = 1000;          % Ohm
C = 100e-6;        % Farad

num = 1;
den = [R*C 1];

G = tf(num, den);

disp('RC Circuit Transfer Function:');
G

%% Step Response
figure;
step(G);
grid on;
title('Step Response of RC Circuit');
xlabel('Time (s)');
ylabel('V_o(t)');

%% Pole
p = pole(G);

disp('System Pole:');
disp(p);