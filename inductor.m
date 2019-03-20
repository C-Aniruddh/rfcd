clc;
clear all;
close all;


% Define constants
sigma_Cu = 64.5e6;
mu = 4*pi*1e-7;
N = 500;


% Get Values
l = 1.27e-3;
a = 1.27e-3;
f_min = 10e3;
f_max = 10e12;


L = 61.418e-9;
Ca = 0.0864e-12;
R = 0.034;


f = f_min*((f_max/f_min).^((0:N)/N));
w = 2*pi*f;


Z = 1./((1j*w*Ca) + 1./(R + 1j*w*L));


Xl = w*L;
figure;
loglog(f, abs(Z), f, Xl);
title('Impedance of a inductor as a function of frequency');
xlabel('Frequency {\itf}, Hz');
ylabel('Impedance |Z|, {\Omega}');
