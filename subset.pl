Domains
    L=integer*

Predicates
    member(integer,L)
    subset(L,L)

Clauses
    member(X,[X|_]).
    member(X,[H|T]):- X<>H, member(X,T).
    subset([],list).
    subset([H|T],list):- member(H,list),subset(T,list).