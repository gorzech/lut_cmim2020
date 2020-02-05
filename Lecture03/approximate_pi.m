% Solution of the hands-on with for loop

N = input('N for pi approx? ');

pi_Leibniz = zeros(1, N);
pi_Euler = zeros(1, N);

s_pi_L = 0;
s_pi_E = 0;

for ii = 1 : N
    s_pi_L = s_pi_L + 1/(4*(ii - 1) + 1) / (4*(ii - 1) + 3);
    s_pi_E = s_pi_E + 1 / ii ^ 2;
    pi_Leibniz(ii) = s_pi_L;
    pi_Euler(ii) = s_pi_E;
end
pi_Leibniz = 8 .* pi_Leibniz;
pi_Euler = sqrt(6 .* pi_Euler);

err_L = abs(pi - pi_Leibniz);
err_E = abs(pi - pi_Euler);

x = 1:N;

plot(x, err_L, x, err_E)
legend('Leibniz', 'Euler')

fprintf('Error for Leibniz after %d iters is %g\n', N, abs(pi-pi_Leibniz(end)))
fprintf('Error for Euler after %d iters is %g\n', N, abs(pi-pi_Euler(end)))