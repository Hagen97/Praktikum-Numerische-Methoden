function [iIteration, a, b] = Bisektionsverfahren()
% Grenzen festlegen
a = 0;  % Grenze a
b = 6;  % Grenze b
d = -1; % Grenze d

iIteration = 1;

f_d = 0;

% Erste Iteration
d = (a + b) / 2.0;   % Mittelwert bilden

f_d = log(2 + 4 * power(d, 2)) - d;

if (f_d >= 0)
    a = d;
else
    b = d;
end

iIteration = iIteration + 1;            % Iteration um 1 erhöhen

% Abbruchbedingung
while ((abs(a - b) > 0.001) && (iIteration <= 100))
    d = (a + b) / 2.0;   % Mittelwert bilden
    f_d = log(2 + 4 * power(d, 2)) - d;   % Neuen Wert berechnen
    
    % Intervall in Abhängigkeit des Ergebnisses eingrenzen
    if (f_d >= 0)
        a = d;
    else
        b = d;
    end

    iIteration = iIteration + 1;            % Iteration um 1 erhöhen
end

end