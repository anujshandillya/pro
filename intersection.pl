search(X,[X|_]).
search(X,[_|T]):- search(X,T).

inter([],_,[]).
inter(_,[],[]).

inter([H|T],L,[H|R]):-
    search(H,L),
    inter(T,L,R).

inter([_|T],L,R):-
    inter(T,L,R).