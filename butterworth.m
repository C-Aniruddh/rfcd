clc;
clear all;
close all;


IL = 20;
f = 0:5;
nf = 2;


n = (log(10^(IL/10) - 1))/(2*log(nf));
N = ceil(n);
display(N);
IL = 10*log(1+f.*(2*N));


figure;
plot(f, IL);
xlabel('Frequency (GHz)');
ylabel('Insertion Loss (dB)');
title('Butterworth Filter')
