L=100;
nn=0:(L-1);
bb=(2/L).*cos(0.44*pi*nn);
ww=-pi:(pi/100):pi;
HH=freqz(bb,1,ww);
plot(abs(HH))
xlabel('frequency(radians)') 
ylabel('a bandpass filter ')
title('part e')
passband=find(abs(HH)>=( max(abs(HH))*0.707));
zz=HH(passband); 
PBW=(length(zz)/2)*2/100