function integral = trapezoidal_int_2(f, a, b, n)
%TRAPEZOIDAL_INT Computes integral of function f over interval [a, b] using
%n intervals

h = (b - a) / n;
integral = 0.5 * (f(a) + f(b));

for ii = 1 : n - 1
    integral = integral + f(a + ii * h);
end

integral = integral * h;