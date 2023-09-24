syms x y
f = acos(x*y);
x1 = diff(f, x)
xy = diff(diff(f, x), y)
simplify(xy)