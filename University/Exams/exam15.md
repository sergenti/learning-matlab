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

```
