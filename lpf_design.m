clc;
clear;
close all;

%% Low-Pass Filter Specifications

K = 0.5;          % DC Gain
fc = 106.1;       % Cutoff frequency [Hz]

wc = 2*pi*fc;     % rad/s

%% Transfer Function
% G(s) = K*wc / (s + wc)

num = K*wc;
den = [1 wc];

G = tf(num, den);

disp('Low-Pass Filter Transfer Function:');
G

%% DC Gain

dc_gain = dcgain(G);

fprintf('DC Gain = %.3f\n', dc_gain);

%% Bode Plot

figure;
bode(G);
grid on;
title('Low-Pass Filter Frequency Response');

%% Step Response

figure;
step(G);
grid on;
title('Low-Pass Filter Step Response');