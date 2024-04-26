replace(_,_,[],[]).
replace(N,M,[N|T],[M|T]).
replace(N,M,[H|T],[H|T2]):-
    replace(N,M,T,T2).