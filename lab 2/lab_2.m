fsamp =11025; % set sampling frequency
dt =1/fsamp; % set sampling interval in seconds
dur = 1.5;%set signal duration in seconds
tt=0:dt:dur; % create vector of time samples spaced at dt seconds
psi =2*pi* (500*tt.^2+200*tt +100); % set argument for chirp function 
xx=10*cos(psi); % modulate signal with cosine and amplitude cos 
soundsc(xx,fsamp);% play signal
specgram(xx,1024,fsamp);% plot spectrogram

 