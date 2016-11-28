## Explanation
1. FT - Fourier Transformation
2. STFT - Short Time Fourier Transformation
3. WT - Wavelet Transformation
4. HHT - Hilbert-Huang Transformation

## Purpose
During my studying on sEMG decomposition, signal processing method is a good way to dig more useful information that is buried in weak sEMG signal.

FT, is a good way to reveal Frequency-domain information, but eliminate all time-domain information;

STFT, which was proposed after FT, continues to have time-domain information with a Short-Time sliding window algorithm. However, its fixed sliding window length limits the resolution of both time and frequency domain.

WT, which is regarded as a multiresolution analysis method, is proposed. Scaling and wavelet functions continue to have changing resolution in different frequency.

HHT, is another way to treat signals. EMD - emperical modes decomposition, as the core of HHT, has been conducted in many field. 
