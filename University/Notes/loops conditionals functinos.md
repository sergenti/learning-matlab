<div align="center">

# Loops & Conditionals

</div>

must insert `end` at the end of every loop, condition or function.

```matlab

% IF - Conditional execution

if I == 2
    %<code>
else I == 3
    %<code>
else
    %<code>
end

% FOR - Definite iterative execution

for i = 1:N
    %<code>
end

% WHILE - Indefinite iterative execution

while a > 0
    %<code>
end
```

<div align="center">

# Functions

</div>

In Matlab you can create functions, you can implement them by creating a `.m file` with the same name of the function

to create a file: `edit function.m`

the general syntax of a function is the following:

```matlab

function [ out1 , out2 , ... ] = nomeFunzione ( in1 , int2 ... )
    %<code>
end
```

<br>

- you don't need to specity the type of a parameter
- you don't need to specity the type of the output
- you can have multiple outputs, use descricturing to get both
- there is no such thing as a pointer
- parameters can be overwritten if global or with output
