function PdiT = RuffiniHorner(x, y, t)
a = length(x);
%Calcolo la tabella delle differenze divise. 
M = zeros(a, a);

%La prima colonna e' uguale a Y
M(:,1) = y(:);

%Calcolo il resto della tabella
for col = 2:a
    for row = col:a
       M(row, col) = (M(row, col - 1) - M(col - 1, col - 1) ) / (x(row) - x(col - 1)); 
    end
end

%Calcoliamo P(t)
PdiT = zeros(1, length(t));
for i=1:length(t)
    h = 0;
    for j=a:-1:1
        h = M(j, j) + (t(i) - x(j))*h; 
    end
    PdiT(i) = h;
end
end

