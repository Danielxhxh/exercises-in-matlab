function [p0] = Estrapolazione(a, b, f, n)

%Calcoliamo le seguenti formule dei trapezi 
In = zeros(length(n));
h = zeros(length(n));

for i = 1:length(In)
    In(i) = FormulaDeiTrapezi(a, b, f, n(i));
    h(i) = (b-a)/n(i);
end
In = In(:, 1);
h = h(:, 1);


%Calcoliamo p(0) usando la formula di Lagrange
p0 = 0;
for i = 1:length(In)
    H = 1;

    for j =1:length(In)
        if i~=j
            H = H * ( a - h(j)^2 ) / ( h(i)^2 - h(j)^2); 
        end
    end
    disp(H);
    p0 = p0 + (In(i)* H);

end

end