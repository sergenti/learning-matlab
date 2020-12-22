```matlab
% If you do not know ahead of time whether the inputs are row vectors or
% column vectors or that they are the same as each other , then provided
% they are both vectors, you can use

newrr = rr;
newrr(end+length(y)) = y;

% This will have the same orientation as rr has.
```
