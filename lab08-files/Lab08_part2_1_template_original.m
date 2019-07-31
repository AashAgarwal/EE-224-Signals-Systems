clear all; 
close all; 

load('ip2_images'); 


filt = ones(1,7)/7; % define the filter you want to use

y_row = filtrow(cicada,filt); % call the row filter OR

imshow(uint8(cicada)); %plot original image
title('The Graph of Original Cicade'), 
xlabel('The X Pixel of Graph'), 
ylabel('The Y Pixel of Graph'),  



