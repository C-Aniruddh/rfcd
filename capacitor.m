clc;
clear all;
close all;


% Define constants
sigma_Cu = 64.5e6;
mu = 4*pi*1e-7;
N = 500;


% Get Values
C = 20e-12;
loss = 1e-4;
l = 2*0.025;
a = 2.032e-4;
f_min = 10e3;
f_max = 10e12;


f = f_min*((f_max/f_min).^((0:N)/N));
w = 2*pi*f;


Rs = 2*l/(2*a)*sqrt(mu*f/pi*sigma_Cu);
L = mu*(2*l)/(2*pi)*(log(2*(2*l)/a) -1);
Re = 1./(w*C*loss);


Z = Rs + 1j*w.*L+1./(1j*w*C + 1./Re);
Z_ideal = 1./(1j*w*C);


figure;
loglog(f, abs(Z), f, abs(Z_ideal));
title('Impedance of a capacitor as a function of frequency');
xlabel('Frequency {\itf}, Hz');
ylabel('Impedance |Z|, {\Omega}');
