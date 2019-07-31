clear all; 
close all; 
clc;

load('ip2_images'); 

wc = [-1,2,-1;-1,2,-1;-1,2,-1]; % filter (c)

y_c=conv2(ghopper,wc);
y_c=round(y_c);
imagesc(y_c);
colormap('gray(256)');
title('Extra credit Edge Detection'), 
xlabel('The X Pixel of Graph'), 
ylabel('The Y Pixel of Graph'),