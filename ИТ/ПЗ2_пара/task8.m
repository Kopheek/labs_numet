syms x y z;

z = asin(sqrt((x^2-y^2)/(x^2+y^2)));

% d2z/dx^2

d2z = diff(z, 2);
dx = diff(x^2);

F = simplify(d2z/dx)