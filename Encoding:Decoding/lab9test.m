%% 2.1.2
fs = 8000;
keyNames = ['5','1','2','4','3','9','0','8','7','6','6','A','B','C','D','*','#'];

% Generate input signal
xx = dtmfdial(keyNames,fs);
soundsc(xx,fs);
spectrogram(xx,'yaxis',256,128,256,fs)


%% Generate filters 
fb = [697, 770,852,941, 1209, 1336, 1477, 1633];
L=80;% or whatever number you found in your studies
hh = dtmfdesign(fb, L, fs);% this is your routine
    
% Plot the filter frequency response
what = 0:pi/1000:pi;
w = what * (fs/(2*pi));
nfilters = max(size(fb));
H = zeros(length(what),nfilters);
    
for i = 1:nfilters
    H(:,i) = freqz(hh(:,i),1,what);
end

figure();H=abs(H);
plot(w,H(:,1),'--r',w,H(:,2),'--g',w,H(:,3),'--b',w,H(:,4),'--k',w,H(:,5),...
        '--c',w,H(:,6),'--k',w,H(:,7),'--r',w,H(:,8),'--g');       
axis([0 fs/2,0, 1.1]);
xlabel('Frequency (Hz)');ylabel('Magnitude');
    
    