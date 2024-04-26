Domains
    X=integer*

Predicates
    append(X,X,X)
    reverseL(X,X)

Clauses
    append([],X,X).
    append([H|T],X,[H|T2]):-append(T,X,T2).
    reverseL([],[]).
    reverseL([H|T],L2):-reverseL(T,L1),append(L1,[H],L2).