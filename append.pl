Domains
    X=integer*

Predicates
    append(X,X,X)

Clauses
    append([],X,X).
    append([H|T],X,[H|T2]):-append(T,X,T2).