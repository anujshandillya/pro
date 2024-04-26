search(X,[X|_]).
search(X,[_|T]):- 
    search(X,T).

union([],X,X).
union(X,[],X).

union([H|T],L,R):-
    search(H,L),
    !,
    union(T,L,R).

union([H|T],L,[H|R]):-
    union(T,L,R).