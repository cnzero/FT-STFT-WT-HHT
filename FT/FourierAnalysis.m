function [Magnitude, Phase, f] = FourierAnalysis(sourcedata, Fs)
    L = length(sourcedata); % Sampling points
    t = (0:L-1)/Fs;
    
    N = 2^(nextpow2(L)+0); % Sample point
               % More points, more accurate Fast Fourier Transformation
    N = L;                
    Y = fft(sourcedata);
    f = Fs/N*(0:N-1);
    f = f(1:floor(N/2));
    M = abs(Y/N);
    Magnitude = M(1:floor(N/2))*2;
    
    P = angle(Y);
    Phase = P(1:floor(N/2));