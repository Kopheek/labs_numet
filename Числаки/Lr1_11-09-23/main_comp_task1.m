a = 0;
b = 1;
p = 1;
eps = 0.001;
Ih1 = lleftrectangle(a, b, 1);
Ih2 = lleftrectangle(a, b, 2);
R = abs((Ih1 - Ih2)/(2^p-1));
n = 1;
while (R>=eps)
    Ih1 = Ih2;
    n = n + 1;
    Ih2 = lleftrectangle(a, b,  2^n)
    R = abs((Ih1 - Ih2)/(2^p-1));
end;
% см. учебник про Ih2
syms x; J = double(int(integral_f(x), x, a, b))