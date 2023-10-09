syms a b x0;

a = 10;
x0 = a;
eps = 0.0001;
x = nuton_nel_ur(eps, x0);
f = functnelur(x);
fprintf('метод Ньютона\nx: %d\nf: %d\n\n', x, f)

a = 0;
b = 10;
x0 = a;
x = poldel(a, b, eps);
f = functnelur(x);
fprintf('метод дихотомии\nx: %d\nf: %d\n', x, f)