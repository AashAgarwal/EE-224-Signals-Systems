ww =0:(pi/1000):pi;
h=cos(0.2*pi*(0:50));
hh=freqz(h,1,ww);
peak=max(abs(hh));
h_1=1/peak*cos(0.2*pi*(0:50));
HH_1=freqz(h_1,1,ww);
plot(ww,abs(HH_1));
xlabel ('Normalized Rad Freq.');
ylabel ('Phase');