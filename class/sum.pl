Domains
    L=integer*

Predicates
    sum(L,integer)

Clauses
    sum([],0).
    sum([H|T],R):-sum(T,X),R=H+X.