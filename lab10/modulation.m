% Load the modulating signal (message)
[m,fs] = myRecording(recObj);
% Keep only a small part of it to speed up calculations
m = m(1:42000);
% Listen to it
soundsc(m,fs);
% Look at the time signal
t = linspace(0,length(m)/fs,length(m));
figure; plot(t,m); 
grid on; 
axis tight;
% Look at the spectrum
f = linspace(-fs/2,fs/2,length(m));
figure; 
plot(f,am_spectrum(m)); 
grid on; 
axis tight;
% Define a carrier frequency
fc = 8000;
% Modulate the signal
u  = mymod(m,fc,fs);
% And demodulate
dm = mydemod(u,fc,fs);
% Look at the modulated signal in the time domain
figure;
plot(t,u); grid on; axis tight;
% Look at the spectrum of the modulated signal
figure;
plot(f,am_spectrum(u)); grid on; axis tight;
% Now listen to it (everything is shifted to high frequencies)
soundsc(u,fs);

% Look at the demodulated signal in the time domain
figure;
plot(t,dm); grid on; axis tight;
% Look at the spectrum of the demodulated signal
figure;
plot(f,am_spectrum(dm)); grid on; axis tight;
soundsc(dm,fs);