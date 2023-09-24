[T,V]=ode45('ex1',[0 0.1],[1 3 2]);
plot(T,V(:,3)),grid
xlabel('Time')
ylabel('z')