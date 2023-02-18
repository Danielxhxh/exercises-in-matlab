function [In] = FormulaDeiTrapezi(a, b, funx, n)

%Trovo il passo di discretizzazione (l'ampiezza)
h = (b - a)/n;

%Trovo il valore dentro le parentesi della formula
s = (funx(a)-funx(b))/2;
for j = 1:n-1
    s = s + funx(a + j*h);
end

%Formula dei trapezi
In = h*s;

end