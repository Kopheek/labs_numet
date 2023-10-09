syms x y Z;
F = (sin(x)/x)*(sin(y)/y);
ezplot(F, [-2*pi, 2*pi, -2*pi, 2*pi]);
grid on