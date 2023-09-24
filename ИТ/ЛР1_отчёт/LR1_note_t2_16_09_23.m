syms f(x)

r = 0.15;
c = 0.3;
f(x) = r*cos(x)+sqrt(c^2-r^2*(sin(x)^2));

df1(x) = diff(f, x);
df2(x) = diff(f, x, 2);

x = 0:0.01:15;

figure
plot(x, df1(x), 'r'), grid
hold on
plot(x, df2(x), 'g'), grid
title('Графики зависимости от времени')
xlabel('Время')
ylabel('Продифференцированные ф-ции')