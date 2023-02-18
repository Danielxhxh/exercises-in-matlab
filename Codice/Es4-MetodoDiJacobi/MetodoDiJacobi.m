function [x, k, norma] = MetodoDiJacobi(A, b, epsilon, x, Nmax)

%Matrice diagonale di A
D = diag(diag(A));

%Matrice inversa di D
Di = inv(D);

%Matrice J
J = Di *(D - A);
    
%Calcolo il residuo
r = norm((b - A*x))/norm(b);

%Calcolo le k iterazioni
for k = 1: Nmax
    if r <= epsilon
        break;
    end
    x = J*x + Di*b; 
    
    r = norm((b - A*x))./norm(b);
end

%Calcolo la 2 norma del vettore x resistuito dalla funzione
norma = norm(x);

end