##### Scrivere una funzione che presi in ingresso il numero di righe ed il numero di colonne, crea la matrice M(righe,colonne) contenente i primi N = (righe x colonne) numeri dispari(max 12 riga) (2 punto)

```matlab
function out = luglio5_19(row,column)
c = 1;
for (i=1:row)
    for (j=1:column)
        out(i,j) = c;
        c = c+2
        end
    end
end
```

###### (b) Sostituire in una colonna a caso, tutti valori pari a uno (NB.: l’istruzione deve essere la piu generale possiible, in modo da poter essere utilizzata con matrici di dimensini differenti) (max 1 riga) (1 punto).

```matlab
A(:,randi(size(A,2))) = ones(size(A,1),1)
A(:,randi(size(A,2))) = ones(1,size(A,1))
```


###### (c) Eliminare la riga con media piu bassa (max 2 riga) (1 punto). `

```matlab
M(mean(M,2)==min(mean(M,2)),:)=[]
```

##### (d) Moltiplicare tutte le celle per un numero casuale intero tra 5 e 18 (max 1 riga) (1 punto).

```matlab
M = M * randi([5,18],1)
M = M * randi([5,18])
```

##### (e) Moltiplicare per -1 tutte le celle che contengono numeri divisibili per 7 (max 1 riga) (1 punto).

```matlab
M(rem(M,7)==0) = M(rem(M,7)==0)*-1
M(mod(M,7)==0) = M(mod(M,7)==0)*-1
```