function y=filterfir(h, x)
% FILTERFIR Finite impulse response (FIR) filtering function
%
% Y=FILTERFIR(H, X) returns the FIR filter result of X by the LTI system
% whose impulse response is H. It is assumed that both H and X represent 
% signals that start at time zero. If X is a row vector, then Y will be
% a row vector. If X is a column vector, Y will be column vector. 
% 
% EXAMPLE: 
%  h=[0 2]; 
%  x=[2 4 1]; 
%  y=filterfir(h, x) 

lenh=length(h); 
lenx=length(x); 
leny=lenh+lenx-1; 

% Make an empty Y vector in the same direction as X
if size(x, 1)==lenx 
	y=zeros(leny, 1); 
else
	y=zeros(1, leny); 
end

% Do the filtering operation
for k=1:lenh
	y(k:k+lenx-1)=y(k:k+lenx-1)+h(k)*x; 
end

return;  % End of the function
