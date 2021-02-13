##### Creare la matrice A di 5 righe e 6 colonne contenente numeri interi casuali da 10 a 30

```matlab

A = randi([10 30], [5,6])

27    12    13    12    23    25
29    15    30    18    10    25
12    21    30    29    27    18
29    30    20    26    29    23
23    30    26    30    24    13

```

##### Aggiungere una riga dopo la prima, contenente numeri i ordine da 1 a 6

```matlab

A = [ A(1,:) ; 1:6 ; A(2:end, :) ]
A = vertcat(A(1,:), [1:6], A(2:end,:))

24    27    19    20    15    20
 1     2     3     4     5     6
10    24    18    19    24    30
15    16    26    23    23    17
10    29    26    24    13    22
12    10    13    25    12    14

```

##### Eliminare le colonne con media inferiore alla media totale della matrice

```matlab

A(:, mean(A) < mean(mean(A))) = []
A(:, mean(A,1) < mean(mean(A))) = []

27    19    20    20
 3     4     5     7
 2     3     4     6
24    18    19    30
16    26    23    17
29    26    24    22
10    13    25    14

```

##### Calcolare il vettore Z contenente le radici quadrate delle medie delle righe

```matlab

sqrt(mean(A,2))

ans =

4.6368
2.1794
1.9365
4.7697
4.5277
5.0249
3.9370


```

##### Scrivere una funzione che, data in ingresso la matrice A, dia in uscita due vettori contenenti la posizione X e Y dei valori pari della matrice A.

```matlab

function [x, y] = trovaPari(M)

X = [];
Y = [];

    for i = 1:1:size(M,1)
        for j = 1:1:size(M,2)
            if mod(M(i,j),2)==0
                X = [X, i];
                Y = [Y, j];
            end

        end
    end
end


```
