% планета
[x, y, z] = sphere(25);
r = 25;
x1 = r * x;
y1 = r * y;
z1 = r * z;
surf(x1, y1, z1), grid
hold on

% спутник
x2 = -75;
y2 = 0;
plot(x2, y2, 'o'), grid

% орбита
a = 75;
b = 75;
t = 0:0.01:2*pi;
x = a * cos(t);
y = b * sin(t);
plot(x, y, '-.')