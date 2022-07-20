function [x] = Komponetenweise(Eingangsmatrix, b_Vektor, Startvektor)
summe = 0;

for i = 1:3         % Zeilen
    for j = 1:3     % Spalten
        if (i ~= j)
            summe = summe + Eingangsmatrix(i,j) * Startvektor(j,1);
        end
    end

    x(i,1) = 1/Eingangsmatrix(i,i) * (b_Vektor(i,1) - summe);
    summe = 0;
end

end