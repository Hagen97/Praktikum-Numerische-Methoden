function [iIteration, x_np1] = Fixpunktverfahren()

% f(x) = ln(2+4x^2)-x
% F(x) := f(x) + x = x
% F(x) := ln(2+4x^2) = x


% Abbruchbedingung: 0,001 zwischen 2 Ergebnissen
%                   100 Iterationen

x_n = 0;
x_np1 = 0;
iIteration = 1;

% Erste Iteration
x_np1 = log(2 + 4 * power(x_n, 2));         % Nullstelle berechnen
iIteration = iIteration + 1;                % Iteration um 1 erhöhen

% Abbruchbedingung
while ((abs(x_np1 - x_n) > 0.001) && (iIteration <= 100))
    x_n = x_np1;                            % Letztes Nullstelle als alten Wert speichern
    x_np1 = log(2 + 4 * power(x_n, 2));     % Neue Nullstelle berechnen

    iIteration = iIteration + 1;            % Iteration um 1 erhöhen

end

end