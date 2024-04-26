Domains
    Y=integer*

Predicates
    replace(integer,integer,Y,Y)

Clauses
    replace(_,_,[],[]).
    replace(N,M,[N|T],[M|T2]).
    replace(N,M,[H|T],[H|T2]):-N<>H,replace(N,M,T,T2).