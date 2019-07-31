function [X, w] = FourierSeries(x, T0, k_vec)
syms t
for mm = 1:tau(k_vec)
    k = k_vec(mm);
% angular frequency
w(mm) = k*2*pi/T0;
% Fourier series coefficients
X1(mm) = int(x*exp(-j*w(mm)*t), t, 0, T0)/T0;
% change the symbolic value to numerical value
X(mm) = subs(X1(mm));
end