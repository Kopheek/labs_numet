a = 0.5; % интервалы надо подставить самим
b = 1; % интервалы надо подставить самим
eps = 0.0001;
x = a:0.01:b;
n = size(x, 2);
y = zeros(1, n);
for i = 1:1:n
    y(i) = functionmin(x(i));
end;
plot(x, y, '-r');

% мтд золотого сечения
t1 = (3 - sqrt(5))/2;
t2 = (sqrt(5)-1)/2;
x1 = a + (b-a)*t1;
x2 = a + (b-a)*t2;
a1 = a;
b1 = b;
f1 = functionmin(x1);
f2 = functionmin(x2);
while (abs(x2 - x1) >= eps)
    if (f1 < f2)
        b1 = x2;
        f2 = f1;
        x2 = x1;
        x1 = a1 + (b1 - a1)*t1;
        f1 = functionmin(x1);
    else
        a1 = x1;
        f1 = f2;
        x1 = x2;
        x2 = a1 + (b1 - a1)*t2;
        f2 = functionmin(x2);
    end
end;

c = (x1 + x2)/2
f_ = functionmin(c)
c_ = fminunc(@functionmin, a) % чтобы работала это функция при установке Матлаба нужно было добавлять в список скачиваемых пакетов Optimization Toolbox 