###### (b) Scrivere una funzione che presi in ingresso tre numeri, restituisca

###### - 1 se i tre numeri sono una terna cartesiana (A*A+B*B=C\*C)

###### - 0 altrimenti (max 8 riga) (2 punto)

```matlab

function OUT = cartesiana(a,b,c)
    if (a*a + b*b == c*c )
        OUT = 1;
    else
        OUT = 0;
    end
end

```

##### Generare una matrice M con 5 righe e 7 colonne, contenente numeri casuali tra -15 e 15

```matlab

M = randi([-15 15], [5,7])

    -4     9   -15     1     6    13   -13
     2    13    -5   -10     8   -11    -2
   -13   -11   -10     3    -2    10   -12
   -14     2     9    -7   -13     1    14
     1    -1    -6     5    -8    15   -15

```

##### Eliminare la riga con media piu bassa

```matlab

M(min(mean(M,2)) == mean(M,2),:)= []

    -4     9   -15     1     6    13   -13
     2    13    -5   -10     8   -11    -2
   -14     2     9    -7   -13     1    14
     1    -1    -6     5    -8    15   -15

```

###### Moltiplicare le colonne dispari per la media dell’intera matrice

```matlab

M(:, 1:2:end) = M(:, 1:2:end) .* mean(mean(M))


  -21.3333    9.0000  -80.0000    1.0000   32.0000   13.0000  -69.3333
   10.6667   13.0000  -26.6667  -10.0000   42.6667  -11.0000  -10.6667
  -74.6667    2.0000   48.0000   -7.0000  -69.3333    1.0000   74.6667
    5.3333   -1.0000  -32.0000    5.0000  -42.6667   15.0000  -80.0000

```

##### Inserire, dopo la prima colonna, una colonna contenente multipli di 3 da 3 a 15

```matlab

M = [M(:,1) (3:3:15)’ M(:,2:end)]

% oppure

a = 3:3:15
M = [M(:,1) a’ M(:,2:end)]

```
