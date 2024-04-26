Domains
    Y=integer*

Predicates
    delete(integer,Y,Y)

Clauses
    delete(Y,[Y|T],T).
    delete(Y,[H|T],[H|T2]):-Y<>H,delete(Y,T,T2).