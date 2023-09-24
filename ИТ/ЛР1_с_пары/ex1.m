function dv = ex1(t,v)
A=1; B=5; C=3;
dv=zeros(3,1);
dv(1)=A*v(1)*v(2)+v(3)+B;
dv(2)=C*v(3)^2+sin(pi*v(1));
dv(3)=-(v(1)+v(2))*t;