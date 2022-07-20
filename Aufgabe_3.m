%{
    Praktikum Numerische Methoden
    Aufgabe 2: Numerische Lösung von Gleichungssystemen

    Bearbeitet durch Janin Reinarz und Hagen Heuer
    Studiengang: Master-Mechatronik
    Datum 20.07.2022
%}

clear
clc

%% Variablen anlegen
Eingangsmatrix = zeros(3,3);
b_Vektor = zeros(3,1);
Startvektor = zeros(3,1);

L = zeros(3,3);
R = zeros(3,3);
D = zeros(3,3);
x = zeros(3,1);

n = 1;
i = 1;
j = 1;

%% Matrizen einlesen
prompt = "a11 eingeben: ";
Eingangsmatrix(1,1) = input(prompt);

prompt = "a12 eingeben: ";
Eingangsmatrix(1,2) = input(prompt);

prompt = "a13 eingeben: ";
Eingangsmatrix(1,3) = input(prompt);

prompt = "a21 eingeben: ";
Eingangsmatrix(2,1) = input(prompt);

prompt = "a22 eingeben: ";
Eingangsmatrix(2,2) = input(prompt);

prompt = "a23 eingeben: ";
Eingangsmatrix(2,3) = input(prompt);

prompt = "a31 eingeben: ";
Eingangsmatrix(3,1) = input(prompt);

prompt = "a32 eingeben: ";
Eingangsmatrix(3,2) = input(prompt);

prompt = "a33 eingeben: ";
Eingangsmatrix(3,3) = input(prompt)

% Eingangsmatrix = [2 -1 0;
%                   -1 2 -1;
%                   0 -1 2]

prompt = "b1 eingeben: ";
b_Vektor(1,1) = input(prompt);

prompt = "b2 eingeben: ";
b_Vektor(2,1) = input(prompt);

prompt = "b3 eingeben: ";
b_Vektor(3,1) = input(prompt)

% b_Vektor = [3;
%             4;
%             5]

prompt = "Startvektor s1 eingeben: ";
Startvektor(1,1) = input(prompt);

prompt = "Startvektor s2 eingeben: ";
Startvektor(2,1) = input(prompt);

prompt = "Startvektor s3 eingeben: ";
Startvektor(3,1) = input(prompt)

% Startvektor = [2;
%                2;
%                2]

%% Berechnung
while n <= 50
    %% Lösung 1
%     L = [0 0 0;
%         Eingangsmatrix(2,1) 0 0;
%         Eingangsmatrix(3,1) Eingangsmatrix(3,2) 0];
%     
%     R = [0 Eingangsmatrix(1,2) Eingangsmatrix(1,3);
%          0 0 Eingangsmatrix(2,3);
%          0 0 0];
%     
%     D = [Eingangsmatrix(1,1) 0 0;
%          0 Eingangsmatrix(2,2) 0;
%          0 0 Eingangsmatrix(3,3)];
% 
%     x = -inv(D)*((L + R) * Startvektor - b_Vektor)
%     
%     Startvektor = x;

    %% Alternative Lösung
    x = Komponetenweise(Eingangsmatrix, b_Vektor, Startvektor)
    Startvektor = x;


    %% Laufvariable erhöhen
    n = n + 1;

end

