clc;
clear all;
close all;


IL = 50;
f = 0:0.1:6;
nf = 2;


RF = 6;
A = sqrt((10^(RF/10) - 1));
n = (acosh(2*(((10^(IL/10)) -1)/A^2) -1))/(2*acosh(nf));
N = ceil(n);
display(N);
IL = 10*log(1 + (A^2) * (cosh(N*acosh(f))).^2);


figure;
plot(f, IL);
xlabel('Frequency GHz');
ylabel('Insertion Loss');
title('Chebyshev Filter');
