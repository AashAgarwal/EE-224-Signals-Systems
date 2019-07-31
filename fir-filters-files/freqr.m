function freqr(h)
% FREQR Frequency Response of FIR filter
%
% FREQR(H) plots the magnitude and phase response of an FIR filter 
% whose impulse response is H. It is assumed that H represents
% a signal that starts at time zero. 
% h=[1 2 1]; freqr(h);

N=200; % number of frequencies to evaluate


% begin calculation
omega=-pi:2*pi/N:pi;
FF=exp(-j*omega'*(0:length(h)-1));
H=FF*h(:);  % The frequency response
mH=abs(H);  % The magnitude response
pH=angle(H); % The phase response
% end calculation


% plot the results

subplot(2, 1, 1); plot(omega, mH); 
xlabel('\omega'); ylabel('|H(\omega)|');  title('magnitude response'); 
h=gca; grid on;
set(h, 'XLim', [-pi, pi]); % set x axis limit
set(h, 'XTick', [-pi: 0.25*pi: pi]);  % X axis tick positions
set(h, 'FontName', 'symbol'); % prepare to type tick label 
set(h, 'XTickLabel', '-p||-0.5p||0||0.5p||p');% tick label

subplot(2, 1, 2); plot(omega, pH); 
xlabel('\omega'); ylabel('\angle H(\omega)'); title('phase response'); 
h=gca; grid on; 
set(h, 'XLim', [-pi, pi]); % set x axis limit
set(h, 'XTick', [-pi: 0.25*pi: pi]);  % X axis tick positions
set(h, 'FontName', 'symbol'); % prepare to type tick label 
set(h, 'XTickLabel', '-p||-0.5p||0||0.5p||p');% tick label

return;  % End of the function
