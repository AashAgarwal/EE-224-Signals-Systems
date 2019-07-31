function sc=dtmfscore(xx,hh)
xx = xx*(2/max(abs(xx)));
Y = conv(xx,hh);
plot(abs(Y));
if (max(abs(Y)))>=0.59
    sc=1; 
else
    sc=0; 
end