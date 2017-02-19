clearvars;
close all;

m=0.2;
M=0.1;
L=0.2;
w=6*pi;
g=9.81;

thetaInitial=0.0001;
thetaDotInitial=0;
sim('flyball');


%%

w=0:0.1:100;
theta=real(acos(g/m./w.^2.*(m+M)/L));
h=2*L*(1-cos(theta));
plot(w,theta);


%% Frequency

w=6*pi;
thetaEqu=acos(g/(m*w^2)*(m+M)/L);

k=-((((2*cos(thetaEqu)*m*w^2/2-g*cos(thetaEqu)*(m+M)/L)*(m+2*M*sin(thetaEqu)^2))-(sin(2*thetaEqu)*m*w^2/2-g*sin(thetaEqu)*(m+M)/L)*2*M*sin(2*thetaEqu))/...
        (m^2+4*m*M*sin(thetaEqu)^2+4*M^2*sin(thetaEqu)^4));
    
sqrt(-k)/2/pi
