<div align="center">

# Matlab as a Calculator

</div>

Matlab can be used as a calculator:
if not specified the returned value is stored into variable ans.
if there is a semicolon ' ; ' at the end of a line, the output will not be shown.

**IMPORTANT**
there is no such thing as initialization and declaration in matlab, they happen at the same time. when you assign a value to a variable that variable will be created on the fly dinamically. obviosly you cannot use variable that have no assigned value.

Examples:

```matlab
% Sum, default output in  ans
>> 5+3 %ans=8

% Stoing value into variable a
>> a = 5+3 %a=8

% manual variable display
>> a = 5+3;
>> a %a=8

% elevating to a power
>> 5^3 %ans=125

% Square root
>> sqrt(144) %ans=12

% Right division
>> 5/3 %ans=1.6667

% Left division
>> 5\3 %ans=0.6000

% Absolute value
>> abs(−123) %ans=123

% pi constant
>> pi % ans=3.1416

```
