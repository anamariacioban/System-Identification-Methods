%%

clearvars
clc

%% Magic numbers (replace with received numbers)
m = 4; 
n = 10; 

%% Process data (fixed, do not modify)
c1 = (1000+n*300)/10000;
c2 = (1.15+2*(m+n/10)/20);
a1 = 2*c2*c1;
a2 = c1;
b0 = (1.2+m+n)/5.5;

rng(m+10*n)
x0_slx = [2*(m/2+rand(1)*m/5); m*(n/20+rand(1)*n/100)];

%% Experiment setup (fixed, do not modify)
Ts = 10*c2/c1/1e4*1.5; % fundamental step size
Tfin = 30*c2/c1*10; % simulation duration

gain = 10;
umin = 0; umax = gain; % input saturation
ymin = 0; ymax = b0*gain/1.5; % output saturation

whtn_pow_in = 1e-6*5*(((m-1)*8+n/2)/5)/2*6/8; % input white noise power and sampling time
whtn_Ts_in = Ts*3;
whtn_seed_in = 23341+m+2*n;
q_in = (umax-umin)/pow2(10); % input quantizer (DAC)

whtn_pow_out = 1e-5*5*(((m-1)*25+n/2)/5)*6/80*(0.5+0.3*(m-2)); % output white noise power and sampling time
whtn_Ts_out = Ts*5;
whtn_seed_out = 23342-m-2*n;
q_out = (ymax-ymin)/pow2(9); % output quantizer (ADC)

u_op_region = (m/2+n/5)/2; % operating point   

%% Input setup (can be changed/replaced/deleted)
T1=9; 
wf=1/T1;
fmin=wf/2/pi/10;   
fmax=wf/2/pi*5;
Ain=2;   

u0 = 0;     % fixed
ust = 4*m;  % must be modified (saturation)
t1 = 12/a1; % recommended 

%% Salveaza tot ce trebuie pentru Simulink (CHIRP)
fname = 'generate_chirp_values.mat';

save(fname, ...
    'm','n','c1','c2','a1','a2','b0', ...
    'Ts','Tfin','gain','umin','umax','ymin','ymax', ...
    'whtn_pow_in','whtn_Ts_in','whtn_seed_in','q_in', ...
    'whtn_pow_out','whtn_Ts_out','whtn_seed_out','q_out', ...
    'u_op_region','u0','ust','t1','x0_slx', ...
    'T1','wf','fmin','fmax','Ain');

disp(['The file was created: ', fname]);
whos('-file', fname)