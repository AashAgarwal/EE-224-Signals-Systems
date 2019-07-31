clear all; 
close all; 

load('ip2_images'); 


filt = [1 2 4 2 1]/10; % define the filter you want to use

y_column = filtcolumn(cicada,filt); % call the row filter OR
y_row_columna = filtrowcolumn(cicada,filt); % call the row-column filter to get the filtered image


imshow(uint8(cicada)); %plot original image
title('The Graph of Original Cicade'), 
xlabel('The X Pixel of Graph'), 
ylabel('The Y Pixel of Graph'), 

imshow(uint8(y_row_columna)); %plot filtered image
title('The Graph of Filtered Cicade'), 
xlabel('The X Pixel of Graph'), 
ylabel('The Y Pixel of Graph'), 



