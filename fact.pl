Domains
N=integer
R=integer

Predicates
fact(N,R)

Clauses
fact(0,1)
fact(N,Result) :-
    N>0,
    H=N-1,
    fact(H,R),
    Result=N*R.