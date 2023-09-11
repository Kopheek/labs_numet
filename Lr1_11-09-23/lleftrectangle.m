function [ Ih ] = lleftrectangle(a, b, n)
% см. учебник, там хоть что-то понятное
h = (b-a)/n;
Ih = 0;
for i = 0:1:(n-1)
    x = a + i*h;
    F = integral_f(x);
    Ih = Ih + F;
end;
Ih = Ih*h;
end