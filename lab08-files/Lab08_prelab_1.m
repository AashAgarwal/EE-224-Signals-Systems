clear all; 
close all; 
clc;

load('ip2_images'); 

column = cicada(100,:); %Extracts 100th row 
ave_filt = ones(1,7)/7; %Calculate filter coefficients 
filt_column = conv(column,ave_filt); %Filter 100th column

subplot(2,1,1); % plot the unfiltered signals 
plot(column), 
title('Extract The 100th column of The Image'), 
xlabel('Column Element'), 
ylabel('Intensity'), 

subplot(2,1,2); %plot the filtered signals 
plot(filt_column), 
title('Filter Extract The 100th column of The Image')
xlabel('Column Element'), 
ylabel('Filtered Intensity'),