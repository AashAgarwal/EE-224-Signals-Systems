ftable = [1;2;3;4;5]*[80,110]
 fs = 8000;
 xx = [ ];
 %disp (?--- Here we go through the Loop ---?)
 keys = rem(3:12,10) + 1;
 for ii = 1:length(keys)
   kk = keys(ii);
   xx = [xx,zeros(1,400)];
   krow = ceil(kk/2);
   kcol = rem(kk-1,2) + 1;
   xx = [xx, cos(2*pi*ftable(krow,kcol)*(0:1199)/fs) ];
 end
 soundsc(xx,fs)