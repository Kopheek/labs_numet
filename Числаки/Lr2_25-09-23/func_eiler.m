function [ setf ] = func_eiler(x0, y0, h, n)
    setf = zeros(2, n+1);
    setf(1, 1) = x0;
    setf(2, 1) = y0;
    for i = 2:1:(n+1)
        setf(1, i) = x0 + (i-1)*h;
        setf(2, i) = setf(2, i-1) + h*func_f_main(setf(1, i-1), setf(2, i-1));
    end;
end