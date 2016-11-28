% STFT -- Short-Time-Fourier-Tranformation
% spectrogram, matlab built-in function

close all,clc
N = 1024;
n = 0:1:N-1;

w0 = 2*pi/5;
x = sin(w0*n)+10*sin(2*w0*n);
subplot(2,1,1)
plot(x)

subplot(2,1,2)
S = spectrogram(x,10,5);
spectrogram(x, 'yaxis')