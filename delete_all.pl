Domains
    Y=integer*

Predicates
    delete(integer,Y,Y)

Clauses
    delete(_,[],[]).
    delete(Y,[Y|T],B).
    delete(Y,[H|T],[H|T2]):-Y<>H,delete(Y,T,T2).