%{
    Praktikum Numerische Methoden
    Aufgabe 1: Bisektionsverfahren und Fixpunktverfahren

    Bearbeitet durch Janin Reinarz und Hagen Heuer
    Studiengang: Master-Mechatronik
    Datum 08.05.2022
%}
clear
clc

% Verfahren auswählen
prompt = "Verfahren auswählen: F = Fixpunktverfahren, B = Bisektionsverfahren: ";
inputVerfahren = input(prompt, "s")

if (inputVerfahren == 'F')
    % Fixpunktverfahren;

    % f(x) = ln(2+4x^2)-x
    % F(x) := f(x) + x = x
    % F(x) := ln(2+4x^2) = x


    % Abbruchbedingung: 0,001 zwischen 2 Ergebnissen
    %                   100 Iterationen

    [iIteration, x_np1] = Fixpunktverfahren();  % Funktionsaufruf

    % Ausgabe der Ergebnisse
    Ausgabe = sprintf("Ende nach %d Iterationen.", iIteration);
    disp(Ausgabe);

    Ausgabe = sprintf("Nullstelle bei %d", x_np1);
    disp(Ausgabe);

else
    % Bisektionsverfahren
    % f(x) = ln(2+4x^2)-x

    % Abbruchbedingung: 0,001 zwischen 2 Ergebnissen
    %                   100 Iterationen

    [iIteration, a, b] = Bisektionsverfahren(); % Funktionsaufruf

    % Ausgabe der Ergebnisse
    Ausgabe = sprintf("Ende nach %d Iterationen.", iIteration);
    disp(Ausgabe);

    Ausgabe = sprintf("Nullstelle zwischen [%d , %d]", a, b);
    disp(Ausgabe);
end



