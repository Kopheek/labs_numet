function [ x ] = nuton_nel_ur(eps, x0)
    x1 = x0 - functnelur(x0)/dfunctnelur(x0);
    r = abs(functnelur(x1));
    while (r>eps)
        x1 = x1 - functnelur(x1)/dfunctnelur(x1);
        r = abs(functnelur(x1));
    end;
    x = x1;
end