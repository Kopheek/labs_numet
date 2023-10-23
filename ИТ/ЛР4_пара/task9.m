syms x;

f1 = (sin(3*x))^2 - (sin(2*x))^2 - sin(5*x)*sin(x);
f2 = (1 + sin(2*x)+cos(2*x))/(1 + sin(2*x)-cos(2*x));
f3 = 3*((sin(x))^4 + (cos(x))^4) - 2*((sin(x))^6 + (cos(x))^6);
f4 = (sin(3*x))^2 - (sin(2*x))^2 - sin(5*x)*sin(x);

simplify(f1)
simplify(f2)
simplify(f3)
simplify(f4)