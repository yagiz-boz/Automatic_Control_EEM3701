clc;
clear;
close all;

%% Forward Path
G = tf(10, [1 3]);

%% Feedback Path
H = tf(2, 1);

%% Closed-Loop System
% Negative feedback:
% T(s) = G(s) / (1 + G(s)H(s))

T = feedback(G, H);

disp('Forward Transfer Function G(s):');
G

disp('Feedback Transfer Function H(s):');
H

disp('Closed-Loop Transfer Function:');
T

%% Step Response
figure;
step(T);
grid on;
title('Closed-Loop Step Response');
xlabel('Time (s)');
ylabel('Output');