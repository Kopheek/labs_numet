syms Vz(t)
syms V(t) y(t) z(t)

V0 = 250;
teta = 70;
g = 9.8;
Vz0 = V0 * sin(teta);
Vy = V0 * cos(teta);
tmax = 2 * Vz0 / g;
Vz(t) = Vz0 - g*t;
V(t) = sqrt(Vy^2 + Vz(t)^2);
y(t) = Vy*t;
z(t) = int(Vz(t), t);
t = 0:0.01:tmax;

figure
plot(y(t), z(t));
xlabel('Y')
ylabel('Z')

figure
plot(t, V(t));
xlabel('T')
ylabel('V(t)')