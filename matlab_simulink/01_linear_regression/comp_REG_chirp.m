%% Data acquisition (use t, u, y to perform system identification)
out = sim("CIOBAN_AnaMaria_circuit_hidraulic_regresie.slx");

t = out.tout;
u = out.u;
y = out.y;
%% Sisteme
%regresie liniara
A_rg=[0,1;-0.1108,-0.9438];
B_rg=[0;0.3061];
C_rg=[1,0];
D_rg=0;
sys_regresie_liniara=ss(A_rg,B_rg,C_rg,D_rg);
H_regresie_liniara=tf(sys_regresie_liniara);

%chrip
A_chirp=[0,1;-0.1239,-1.0344];
B_chirp=[0;0.3433]; 
C_chirp=[1,0];
D_chirp=0;

sys_chirp=ss(A_chirp,B_chirp,C_chirp,D_chirp);
H_chirp=tf(sys_chirp);

%% Ploatare
ysim_regresie=lsim(sys_regresie_liniara,u,t,[y(1),3]);
ysim_chirp=lsim(sys_chirp,u,t,[y(1),4]); 

figure;
plot(t,u,t,y,t,ysim_regresie,t,ysim_chirp);
legend('u','y','reg','chirp')

eMPN_regresie=norm(y-ysim_regresie)/norm(y-mean(y))*100
eMPN_chirp=norm(y-ysim_chirp)/norm(y-mean(y))*100