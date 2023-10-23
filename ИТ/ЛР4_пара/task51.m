% y" + 2*y' + y = x*sin(2*x)

S = dsolve('D2y + 2*Dy + y = x*sin(2*x)', 'y(0) = 1', 'Dy(0) = -1')