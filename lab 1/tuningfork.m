Fs = 11025;
nbits = 16;
device = 1;
recObj = audiorecorder(Fs,nbits,device);

disp('Start Recording');
recordblocking(recObj, 5); 
disp('End of Recording.');

play(recObj);

tuningfork1 = getaudiodata(recObj);

T = (0:length(tuningfork1)-1)* (1/Fs); 
plot(T,tuningfork1);