clear;
format long;

[t,n] = mooreslaw;

x   = [t, -ones(13,1)] \log(n);
t_0 = x(2)/x(1);

A     = exp(x(1));
A_fit = A.^(t - t_0);

% display x_1 & x_2
disp(['x(1) = ', num2str(x(1))]);
disp(['x(2) = ', num2str(x(2))]);

% display the plot :
semilogy(t, n, 'o', t, A_fit, '-'); 
