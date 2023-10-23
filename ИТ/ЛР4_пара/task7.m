syms k1 s k2;

w1 = k1;
w2 = 10/(s + 10);
w3 = 2/(s + 1);
w4 = 1/s;
w5 = k2;

W = (w1*w2*w3*w4)/(1+w2*w2*w5+w1*w2*w3*w4);
W = simplify(W)