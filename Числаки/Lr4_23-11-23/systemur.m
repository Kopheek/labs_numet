function [F, DF] = systemur(x)
    % Система уравнение для метода Ньютона
    a = 1.5;
    c = 2;

    f1 = x(1)^2 + a * x(2)^2 - c^2;
    f2 = x(1)^3 + 2 * x(2) - 2;
    f1x = 2 * x(1);
    f1y = 2 * a * x(2);
    f2x = 3 * x(1)^2;
    f2y = 2;
    F = [f1; f2];
    DF = [f1x f1y; f2x f2y];
end