function [PdiT] = Es1(x, y, t)

a = length(x);

%Devo calcolare la tabella delle differenze divise. 
M = zeros(a, a);

%la prima colonna è uguale a Y
M(:,1) = M(:,1) + y(:);

%Calcoliamo il resto della tabella
for col = 2:a
    for row = col:a
       M(row, col) = (M(row, col - 1) - M(col - 1, col - 1) ) / (x(row) - x(col - 1)); 
    end
end


%Calcoliamo P(t)
PdiT = zeros(length(t));

for i=1:length(t)
    h = 0;
    for j=a:-1:1
        h = M(j, j) + (t(i) - x(j))*h; 
    end
    PdiT(i) = h;
end


end

