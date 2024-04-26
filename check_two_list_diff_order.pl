search(X,[X|_]).
search(X,[_|T]):- 
    search(X,T).

del(Y,[Y|T],T).
del(Y,[H|T],[H|T2]):-
    del(Y,T,T2).

equal([],[]).
equal([_|_],[]):- !, fail.
equal([],[_|_]):- !, fail.

equal([H|T],L):-
    del(H,L,L2),
    equal(T,L2).