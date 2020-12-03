##### Riportare la porzione di codice in C e Matlab, per effettuare un ciclo for che sommi i primi 100 numeri.

```matlab
% MATLAB
c = 0;
for (i=1:1:100)
c = c+i;
end
```

```c
// C
int i;
int c = 0;
for (i=0; i<=100; i++)
c = c+1;
```

##### (a) Scrivere una funzione che presi in ingresso tre numeri, restituisca
- 1 se i tre numeri sono una terna cartesiana (A*A+B*B=C*C)
- 0 altrimenti (max 8 riga) (2 punto)

```matlab
function out = luglio19_19(a,b,c)
ipo = sqrt(a^2+b^2);
    if (ipo == c)
        out = 1
    else
        out = 0
    end 
end
```

##### (b) Generare una matrice M con 5 righe e 7 colonne, contenente numeri casuali tra -15 e 15 (max 1 riga) (1 punto).

```matlab
randi([-15 15],[5 7])
```

##### (c) Eliminare la riga con media piu bassa (max 2 riga) (1 punto). `

```matlab
M(mean(M,2)==min(mean(M,2)),:)=[]
```

##### (d) Moltiplicare le colonne dispari per la media dell’intera matrice (max 1 riga) (1 punto).

```matlab
M(:,1:2:end) = M(:,1:2:end) * mean(mean(M));
```

##### (e) Inserire, dopo la prima colonna, una colonna contenente multipli di 3 da 3 a 15(max 2 righe) (1 punto).

```matlab
M = [M(:,1) (3:3:15)’ M(:,2:end)]
% oppure
a = 3:3:15
M = [M(:,1) a’ M(:,2:end)
```