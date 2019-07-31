clear all; 
close all; 

load('ip2_images'); 


filt = ; % define the filter you want to use

y_row = filtrow(cicada,filt); % call the row filter OR
y_row_columna = filtrowcolumn(cicada,filt); % call the row-column filter to get the filtered image


show_img(cicada,1,1); %plot original image
title('The Graph of Original Cicade'), 
xlabel('The X Pixel of Graph'), 
ylabel('The Y Pixel of Graph'), 

show_img(y_row_columna,2,1); %plot filtered image
title('The Graph of Filtered Cicade'), 
xlabel('The X Pixel of Graph'), 
ylabel('The Y Pixel of Graph'), 



