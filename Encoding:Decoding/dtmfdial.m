function xx = dtmfdial(keyNames,fs)
%DTMFDIAL Create a signal vector of tones which will dial
% a DTMF (Touch Tone) telephone system.
%
% usage: xx = dtmfdial(keyNames,fs)
% keyNames = vector of characters containing valid key names
% fs = sampling frequency
% xx = signal vector that is the concatenation of DTMF tones.
%
% Example function call
%  keyNames = ['5','1','5','2','3','B','*'];
%  fs  = 8000;
%  xx = dtmfdial(keyNames,fs);
%  To verify performance after running this routine, use:
%  spectrogram(xx,'yaxis',256,128,256,fs)
%  This will show that the correct signals have been encoded

%dtmf.keys is a 4 by 4 array for the phone keys
% the column and row locations give frequency information
dtmf.keys = ...
['1','2','3','A';
 '4','5','6','B';
 '7','8','9','C';
 '*','0','#','D'];

dtmf.colTones = ones(4,1)*[1209,1336,1477,1633];
dtmf.rowTones = [697;770;852;941]*ones(1,4);

xx = [];
for x= 1:length(keyNames)
    m=keyNames(x); 
    [i,j]=find(m == dtmf.keys);
    xx=[xx,zeros(1,400)];
    row=dtmf.rowTones(i,j);
    col=dtmf.colTones(i,j);
    xx=[xx,cos(2*pi*row*(0:1600)/fs)+cos(2*pi*col*(0:1600)/fs)];
end

soundsc(xx,fs); 
specgram(xx,1024,11025);
