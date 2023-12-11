X = [-1.0 0.0 1.0 2.0 3.0 4.0]; % подставлять значения из таблицы
Y = [-0.5 0.0 0.5 0.86603 1.0 0.86603]; % подставлять значения из таблицы
N = 5; % N+1 узлов
n = 3; % степень многочлена
A = zeros(n+1, n+1);
b = zeros(n+1, 1);

for k = 0:1:n
    for i = 0:1:n
        for j = 0:1:N
            A(k+1, i+1) = A(k+1, i+1) + X(j+1)^(i+k);
        end;
    end;
    for j = 0:1:N
        b(k+1) = b(k+1) + Y(j+1)*X(j+1)^k;
    end
end;

C = inv(A)*b;
x = X(1):0.1:X(N+1);
r = size(x, 2);
y = zeros(1, r);
Q = 0; % ошибка

for i = 1:1:r
    y(i) = priblmnog(x(i), C, n);
end;
    
for i = 1:1:N
    Q = Q + (priblmnog(X(i), C, n) - Y(i))^2;
end;

Q
hold on;
plot(x, y, '-r');
plot(X, Y, '*b');
hold off;