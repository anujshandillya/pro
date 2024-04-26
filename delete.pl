delete(Y,[Y|T],T).
delete(Y,[H|T],[H|T2]):-
    delete(Y,T,T2).