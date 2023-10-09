syms a b x0;

a = -1;
b = 0;
x0 = a;
eps = 0.0001;
x = nuton_nel_ur(eps, x0)
f = functnelur(x)
x = poldel(a, b, eps)
f = functnelur(x)