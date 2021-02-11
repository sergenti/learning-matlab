```matlab
A = [ −9 9 −10 −4 −5; −9 −8 −3 1 3; 1 1 −7]
```

##### (a) Eliminare le colonne con media > 0

```matlab
A( : , mean(A) > 0) = []

−9    −10    −4
−9     −3     1
 1     −7    −7
 6      6     2
```

##### (b) Eliminare la colonna 3

```matlab
A( : , 3) = []
% OR
A = [A( : , 1 : 2 ) A( : , 4 : end ) ]


−9    −10
−9     −3
 1     −7
 6      6
```

```matlab
A = [ −9 9 −10 −4 −5; −9 −8 −3 1 3; 1 1 −7
```

##### (c) Inserire, dopo la seconda colonna, una colonna contenente valori casuali da -11 a 37

```matlab

B = randi([-11 37], [1, size(A,2)])
A = [A( : , 1:2 ), B , A( : , 4:end ) ]
% OR
A = [A( : , 1 : 2 ) randi ([ −11 37] , [ 4 1 ] ) A( : , 3 : end ) ]

−9       9      −4      −10      −4     −5
−9      −8      29      −3       1       3
 1       1      15      −7      −7       4
 6      −1      37       6       2       5
```

##### (d) Chiedere un numero all’utente e stampare solamente i numeri di cui il numero inserito è un divisore

```matlab
n = input('Inserisci un numero: ')
A( rem(A,n) == 0 )
```

##### (e) Creare una matrice B che contiene i valori di A meno la media dei soli valori negativi

```matlab
B = A - mean( A(A < 0) )
```

##### (f) Scrivere una funzione matlab che calcoli la somma dei valori interi da 1 fino a n, con n inserito dall’utente. Stampare a video solamente il valore della somma.

```matlab

% if you are lazy
function out = somma(n)
   out = (n+1)*n/2;
end

% recursive
function out = somma(n)
    if (n==0)
        out = 0;
    else
        out = n + somma(n-1);
    end
end

% iterative
function out = funzione(n)
    out = 0;
    for i= 1:1:n
        out = out + i;
    end
end

```

##### Scrivere una funzione ricorsiva per il calcolo nella serie di fibonacci

```matlab

function f = fibonacci(n)
    if ( n==0 | n==1)
        f=0;
    else if ( n==2 )
        f=1;
    else
        f= fibonacci(n-1) + fibonacci(n-2)
    end
end

function out = fibonacci(n)
    if ( n<=1 )
        out = n;
    else
        out = fibonacci(n-1) + fibonacci(n-2);
    end
end


```

##### Creare la matrice M con dimensione di righe e colonne casuali (diverse) da 5 a 10 contenente solo valori pari a 1

```matlab
% differences ?
M = ones ( randi( [ 5 10 ] , [ 1 2 ] ) )
M = ones(randi([5,10], randi([5,10])))

1     1     1     1     1
1     1     1     1     1
1     1     1     1     1
1     1     1     1     1
1     1     1     1     1
1     1     1     1     1
1     1     1     1     1
1     1     1     1     1
1     1     1     1     1
```

##### Inserire nelle righe dispari valori casuali da 1 a 10

```matlab
M( 1:2:end , : ) = randi( [ 1 , 10 ] , size( M( 1:2:end , : ) ) )

3     5     3     7     3 <--- odd row (1)
1     1     1     1     1
3     9     3     1     1 <--- odd row (3)
1     1     1     1     1
1     7     9     3     7 <--- odd row (5)
1     1     1     1     1
5     3     5     5     7 <--- odd row (7)
1     1     1     1     1
```

##### Calcolare la media delle celle con valore maggiore di 3

```matlab
mean( M( M > 3 ) )
```

##### Scrivere una funzione che presa in ingresso la matrice M, crei una nuova matrice "specchio" N

con la prima colonna in ultima posizione, la seconda in penultima...

```matlab
function N = funzione(M)
    for  i= 1:1:size(M,2)
        N(:,size(M,2)-i +1) = M(:,i);
    end
end

% better implementation
function OUT = specchio(M)
    OUT = [M(:, end:-1:1)];
end

```
