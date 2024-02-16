Domains
N=integer
L=integer*

Predicates
size(N,L)

Clauses
size(0,[]).
size(N,[_|T]) :-
    size(M,T),
    N = M+1.