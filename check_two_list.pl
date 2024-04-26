equal([],[]).
equal([H|T],[H|R]):-
    equal(T,R).