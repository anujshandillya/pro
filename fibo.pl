fibo(0,1).
fibo(1,1).

fibo(A,R):-
    A1 is A-1,
    A2 is A-2,
    fibo(A1,X1),
    fibo(A2,X2),
    R is X1+X2.