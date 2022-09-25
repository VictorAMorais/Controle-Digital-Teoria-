%Linearização
X0 = [0.5,0,0]';
U0 = [0.87];
ix = [];
iu = [1];
iy = [];

[X,U,Y,DX] = trim('Diagrama_distancia', X0,U0,ix,iu,iy);

[A,B,C,D] = linmod('Diagrama_distancia', X,U);

ss_model = ss(A,B,C,D);
[NUM,DEN] = ss2tf(A,B,C,D)

Gp = tf(NUM,DEN)
GPz = zpk(Gp)