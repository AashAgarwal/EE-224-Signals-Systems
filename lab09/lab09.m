nn=0:0.001:10;
bb = [(2/10)*ones(1,10)]; %-- Filter Coefficients
ww = -pi:(0.7*pi):pi;   %-- omega hat
HH = freqz(bb, 1, ww);  %<--freekz.m is an alternative
subplot(2,1,1);
xx=5*cos(0.3*pi*nn)+22*cos((0.44*pi*nn)-pi/3)+22*cos((0.7*pi*nn)-pi/4); 
yy=conv(xx,HH);
plot(ww, abs(HH))
subplot(2,1,2);
plot(ww, angle(HH))
xlabel('Normalized Radian Frequency')