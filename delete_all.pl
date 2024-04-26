delete(_,[],[]).

delete(Y,[Y|T],B):- 
    delete(Y,T,B).

delete(Y,[H|T],[H|T2]):- 
    delete(Y,T,T2).