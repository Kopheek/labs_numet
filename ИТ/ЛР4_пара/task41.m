syms x y z;

Y1 = x + 2*y + 3*z - 8;
Y2 = 3*x + y + z - 6;
Y3 = 2*x + y +2*z - 6;

S = solve(Y1, Y2, Y3, x, y, z);
[S.x, S.y, S.z]