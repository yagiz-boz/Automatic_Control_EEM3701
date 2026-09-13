clc;
clear;

syms G1 G2 G3 G4 H1 H2 H3

%% First inner feedback loop
% Positive feedback around G3*G4 and H1

Geq1 = (G3*G4) / (1 - G3*G4*H1);

disp('First Equivalent Block:');
pretty(Geq1);

%% Second feedback loop
% Feedback path = H2 / G4

Geq2 = (G2*Geq1) / ...
    (1 + (G2*Geq1)*(H2/G4));

Geq2 = simplify(Geq2);

disp('Second Equivalent Block:');
pretty(Geq2);

%% Outer feedback loop

Gforward = G1*Geq2;

Gtotal = Gforward / ...
    (1 + Gforward*H3);

Gtotal = simplify(Gtotal);

disp('Overall Transfer Function:');
pretty(Gtotal);