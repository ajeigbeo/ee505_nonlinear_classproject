function [x1dot, x2dot] = ode(x1, x2, u)

%Define Parameters
m1 = 100;
m2 = 100;
w12 = 10;
w21 = 10;
w1o = 0.9;
w2o = 0.9;
rho = 1.2;
cp = 109;
gamma1 = 0.034;
gamma2 = 0.03;
T0 = 20;


% u=V is the control input
x1dot = 1/m1*(w12*(x2-x1) - w1o*x1 + gamma1*rho*u*cp*(T0-x1));
x2dot = 1/m2*(w21*(x1-x2) - w2o*x2 + gamma2*rho*u*cp*(T0-x2));