##### Scrivere una funzione che presi in ingresso tre numeri, restituisca

- 0 se i tre numeri sono sia divisibili per 2 che per 3
- 1 altrimenti (max 10 riga) (2 punto)

```matlab

function OUT = f(a,b,c)
    if (mod(a,6) + mod(b,6) + mod(c,6))
        OUT = 0
    else
        OUT = 1
    end
end

function out = f(a,b,c)
    out = rem(a,2) + rem(b,2) + rem(c,2) + rem(a,3) + rem(b,3) + rem(c,3);
    if (out~=0)
    out = 1;
end

```

##### Generare una matrice M con 6 righe e 4 colonne, contenente numeri casuali tra 0 e 100

```matlab

M = randi([0, 100], [6, 4])

80    72    91    75
 9    10    89    50
26    66    33    48
33    49    70    91
68    78    19    61
13    72     3    62

```

##### Eliminare la colonne con media inferiore a 50

```matlab

M(:, mean(M,1) < 50) = []

72    91    75
10    89    50
66    33    48
49    70    91
78    19    61
2     3    62

```

##### Sostituire l’ultima riga con la radice quadrata dei valori della prima riga

```matlab

M(end,:) = sqrt(M(1,:))
A(size(A,1), :) = sqrt(A(1,:))

72.0000   91.0000   75.0000
10.0000   89.0000   50.0000
66.0000   33.0000   48.0000
49.0000   70.0000   91.0000
78.0000   19.0000   61.0000
8.4853    9.5394    8.6603

```

##### Inserire una nuova colonna contenente la media delle righe

```matlab

M = [M ; mean(M,2)]


72.0000   91.0000   75.0000   79.3333
10.0000   89.0000   50.0000   49.6667
66.0000   33.0000   48.0000   49.0000
49.0000   70.0000   91.0000   70.0000
78.0000   19.0000   61.0000   52.6667
 8.4853    9.5394    8.6603    8.8950

```
