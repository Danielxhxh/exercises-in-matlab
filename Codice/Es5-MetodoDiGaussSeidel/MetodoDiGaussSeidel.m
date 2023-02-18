function [x, k, norma] = MetodoDiGaussSeidel(A, b, epsilon, x, Nmax)

%Matrice triangoloare inferiore di A
E= tril(A);

%Matrice inversa di E
Ei = inv(E);

%Matrice J
G = Ei *(E - A);
    
%Calcolo il residuo
r = norm((b - A*x))/norm(b);

%Calcolo le k iterazioni
for k = 1: Nmax
    if r <= epsilon
        break;
    end
    x = G*x + Ei*b; 
    disp(x)
    r = norm((b - A*x))./norm(b);
end

%Calcolo la 2 norma del vettore x resistuito dalla funzione
norma = norm(x);

end