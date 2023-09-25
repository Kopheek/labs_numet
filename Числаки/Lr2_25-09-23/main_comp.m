x0 = 0.2;
X = 1.2;
p = 1;
eps = 0.05;
y0 = 0.25;
n1 = 1;
h = (X-x0)/n1;

setf1 = func_eiler(x0, y0, h, n1);
n2 = 2;
h = (X-x0)/n2;

setf2 = func_eiler(x0, y0, h, n2);
yh1 = setf1(2,:);
yh2 = setf2(2,1:2:(n2+1));
R = norm(yh1-yh2)/(2^p-1);

while (R >= eps)
    setf1 = setf2;
    n1 = n2;
    n2 = 2*n1;
    h = (X-x0)/n2;
    setf2 = func_eiler(x0, y0, h, n2);
    yh1 = setf1(2,:);
    yh2 = setf2(2, 1:2:(n2+1));
    R = norm(yh1-yh2)/(2^p-1);
end;

hold on
plot(setf2(1,:), setf2(2,:), 'r');
[x, y] = ode45(@func_f_main, [x0, X], y0);
plot(x, y, 'g');
hold off