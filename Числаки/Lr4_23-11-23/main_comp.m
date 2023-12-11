% Вар. 16
a = 3;
c = 5;

x = -2:0.1:0;
y1 = sqrt((c^2-x.^2)/a);
y2 = 1 - (x.^3)/2;
hold on;
plot(x, y1, '-r');
plot(x, y2, '-b');
eps = 0.00001;
x0 = [-1;1]; % начальное приближение
[F, DF] = systemur(x0);
DF_ = pinv(DF); % нахождение псевообратной матрицы
x1 = x0-DF_*F;
R = norm(x1-x0);
while (R>=eps)
    x0 = x1;
    [F, DF] = systemur(x0);
    DF_ = pinv(DF);
    x1 = x0 - DF_*F;
    R = norm(x1-x0);
end;

x1
F = systemur(x1)