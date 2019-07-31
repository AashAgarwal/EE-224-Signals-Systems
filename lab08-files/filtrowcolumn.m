function y_column = filtcolumn(image,filt')

[row,column] = size(image); 

for y = 1 : column
    y_column(:,y) = conv(image(:,y),filt); 
    y_column(:,y) = round(y_column(:,y)); 
end

length_filt = length(filt); %find filter half-length 
half_len = floor(length_filt/2); 
y_column = y_column(row+half_len:half_len+1,:); %extract the c pixels in the center of the rows