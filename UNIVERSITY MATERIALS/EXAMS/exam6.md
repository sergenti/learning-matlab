##### Creare un matrice A di dimensioni righe e colonne differenti e casuali da 5 a 10 e contenente solo

```matlab
A = 4*ones(randi([5 10]), randi([5 10]))
```

##### Inserire dopo la prima colonna, una nuova colonna contenente numeri casuali da 0 a NxM dove N numero di righe e M numero di colonne.

```matlab
A= [A(:,1) randi([0 size(A,1)*size(A,2)],[size(A,1) 1]) A(:,2:end)]
```

##### Eliminare le righe con media inferiore a 6

```matlab
A(mean(A,2)<6,:) = []
```

##### Calcolare la somma totale di tutte le colonne pari

```matlab
sum(sum(A(:,2:2:end)))
```

##### Scrivere una funzione che presa in ingresso la matrice A, crea una nuova matrice ”quadrata”, ovvero elimina le righe o le colonne in eccesso in modo da ottenere una matrice con numero righe = numero di colonne

```matlab
function quadrata = test(B)
i = min(size(B));
for j=1:1:i
    for k=1:1:i
        quadrata(k,j) = B(k,j);
        end
    end
end

% oppure

function quadrata = test(B)
i = min(size(B));
quadrata = B(1:i,1:i);
end
```
