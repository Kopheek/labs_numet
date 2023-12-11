function [ y ] = priblmnog(x, C, n)
    % Многочлен, найденный методов наименьших квадратов (МНК)
    y = 0;
    for i = 0:1:n
        y = y + C(i+1)*x^i;
    end;
end