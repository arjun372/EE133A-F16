clear;
format long;

for k = 6:8
  A = [1, 1; 10^(-k), 0; 0, 10^(-k)];
  b = [-10^(-k); 1+10^(-k); 1-10^(-k)];
 
  %print k
  disp('-----------------------------------');
  disp(['k = ', num2str(k)]);
  disp('-----------------------------------');
  
  % QR Factorization Method
  x_qr = A\b;
  disp('QR factorization Method ::');
  disp(x_qr);
  
  % Least-Sqaure Method  
  x_ls = (A' * A) \ (A' * b);
  disp('Least-Square Method ::');
  disp(x_ls);
  
end
