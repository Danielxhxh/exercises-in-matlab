funx = @(x)sqrt(x);

x = [0; 1/64; 4/64; 9/64; 16/64; 25/64; 36/64; 49/64; 1];
punti = linspace(0, 1, 1000);

% Grafico di sqrt(X) 
plot(punti, funx(punti), 'red');
hold on

% Grafico di p(x) 
plot(punti, RuffiniHorner(x, funx(x), punti, 'blue');
hold off

legend('$\sqrt{x}$' , '$p(x)$', 'Interpreter', 'latex');
