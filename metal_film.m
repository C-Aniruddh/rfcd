clc;
clear all;
close all;


% Define constants
sigma_Cu = 64.5e6;
mu = 4*pi*1e-7;
N = 500;


% Get Values
R = 500;
C = 5e-12;
l = 2*0.025;
a = 2.032e-4;
f_min = 10e3;
f_max = 10e12;


f = f_min*((f_max/f_min).^((0:N)/N));


L = mu*l/(2*pi)*(log(2*l/a) - 1);
Z = 1./(1j*2*pi*f*C + 1/R) + 1j*2*pi*f.*L;


figure;
loglog(f, abs(Z));
title('Impedance of a 500 {\Omega} thin-film resistor as a function of frequency');
xlabel('Frequency {\itf}, Hz');
ylabel('Impedance |Z|, {\Omega}');
