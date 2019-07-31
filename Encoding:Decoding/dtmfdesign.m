function hh = dtmfdesign(fb, L, fs)
%DTMFDESIGN
% hh = dtmfdesign(fb, L, fs)
% returns a matrix (L by length(fb)) where each column contains
% the impulse response of a BPF, one for each frequency in fb
% fb = vector of center frequencies
% L = length of FIR bandpass filters
% fs = sampling freq
%
% Each BPF must be scaled so that its frequency response has a
% maximum magnitude equal to one.
hh=[];
 
 for i = 1:length(fb)
     h=cos((2*pi*fb(i)*(0:L-1))/fs);
     [H,W]=freqz(h);
     B=1/max(abs(H));
     h=B*cos((2*pi*fb(i)*(0:L-1))/fs);
        plot(W,abs(H),'color',[1-i/10 i/10 1]);
     hold on;
     hh=[hh,h'];
 end
 title('dtmfdesign')
 xlabel('Freq');
 ylabel('Amp')
 grid on