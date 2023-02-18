funx = @(x)sqrt(x);

x = [0; 1/64; 4/64; 9/64; 16/64; 25/64; 36/64; 49/64; 1];

%Calcolo il vettore y
y = funx(x);

%Calcolo il vettore colonna richiesto dal problema.
pK = zeros(21, 1);
for i=1:21
    pK(i) = RuffiniHorner(x, y, (i-1)/20) - funx((i-1)/20);
end
disp(pK);

