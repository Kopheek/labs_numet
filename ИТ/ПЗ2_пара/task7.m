syms a x;

F = (2*x + 3)/(x + x^(1/3));
res = limit(F, x, inf);
fprintf('Предел №1: %d\n', res)

F = (sin(x)-cos(x))/(1-tan(x));
res = limit(F, x, pi/4);
fprintf('Предел №2: %d\n', res)

F = (x-sin(2*x)) / (x+sin(3*x));
res = limit(F, x, 0);
fprintf('Предел №3: %d\n', res)

F = 1/(1+exp(1/x));
res = limit(F, x, 0, "left");
fprintf('Предел №4: %d\n', res)

F = 1/(1+exp(1/x));
res = limit(F, x, 0, "right");
fprintf('Предел №5: %d\n', res)

F = log(sqrt((1+x)/(1-x)))/x;
res = limit(F, x, 0);
fprintf('Предел №6: %d\n', res)