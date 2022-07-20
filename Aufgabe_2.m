%{
    Praktikum Numerische Methoden
    Aufgabe 2: Gradientenabstiegsverfahren

    Bearbeitet durch Janin Reinarz und Hagen Heuer
    Studiengang: Master-Mechatronik
    Datum 20.07.2022
%}

clear
clc

%% Variablendefinition
learningRate = 0.001;
i = 1;
delta_a = 1;
delta_b = 1;
a = 0;  % Vorgabe a1
b = 0;  % Vorgabe a2

datenpunkte = [-1 0 1.5 3 3.5 4 4.5 6 7.3;
                -0.5 0.5 1.8 2 4 4.3 5 6.8 7];

xi = datenpunkte(1,:);
yi = datenpunkte(2,:);

figure(1);
plot(xi,yi, 'bo')
hold on;
xlim([-2 10])
ylim([-2 10])

%% Berechung der Partiellen Ableitung
% syms a1 b1 x y
% f = (y - (a1*x + b1)).^2
% 
% PartielleAbleitung_b = diff(f, b1);
% PartielleAbleitung_a = diff(f, a1);

while ((i <= 100) && ((abs(delta_a) > 0.001) || (abs(delta_b) > 0.001)))
    % Gradienten berechnen
    gradb = sum(2*b - 2*yi + 2*a*xi);
    grada = sum(2*xi.*(b - yi + a*xi));

    % b_neu und a_neu berechnen
    b_neu = b - (gradb * learningRate);
    a_neu = a - (grada * learningRate);

    delta_b = b - b_neu;
    delta_a = a - a_neu;

    b = b_neu;
    a = a_neu;

    i = i + 1

    punkt1 = a*-1+b;
    punkt2 = a*9+b;
    plot([-1 9], [punkt1 punkt2])

    pause(0.01);
end

