ww=-pi:pi/100:pi;
HH=freqz(ones(1,5)/5,1,ww)
plot(ww,abs(HH));
title('overlay plotting')
xlabel('freq')
ylabel('Amp')
hold on, stem(2*pi/5*[-2,-1,1,2],0.3*ones(1,4),'r.'), hold off