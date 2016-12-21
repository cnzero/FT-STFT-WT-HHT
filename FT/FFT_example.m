close all,clc
Fs = 1000;
T = 1/Fs;
L = 1000;
t = (0:L-1)*T;

S = 0.7*sin(2*pi*50*t) + sin(2*pi*120*t);
X = S + 2*randn(size(t));

plot(L*t(1:L),X(1:L))
title('Signal Corrupted with Zero-Mean Random Noise')
xlabel('t (milliseconds)')
ylabel('X(t)')
%% 
Y = fft(S);
P2 = abs(Y/L);
P1 = P2(1:L/2+1)*2;

f = Fs*(0:(L/2))/L;
figure
plot(f,P1)
title('Single-Sided Amplitude Spectrum of X(t)')
xlabel('f (Hz)')
ylabel('|P1(f)|')
%% 

figure;
subplot(2,1,1);
Mag = abs(Y/L);
Mag = Mag(1:L/2)*2;
plot(Mag)

subplot(2,1,2)
P = angle(Y);
Phase = P(1:L/2);
plot(Phase)

%% 
