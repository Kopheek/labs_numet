% f(x)*f''(x) > 0
syms x;

%f = 2^x + x^2 - 2;
f = 4^x - 5*x - 2;
df2 = diff(f, 2)

f * df2 > 0