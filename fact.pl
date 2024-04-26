fact(0,1).
fact(N,Result) :-
    N>0,
    H is N-1,
    fact(H,R),
    Result is N*R.