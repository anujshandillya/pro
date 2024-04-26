search(X,[X|_]).
search(X,[_|T]):- 
    search(X,T).

subset([], _).
subset([H|T], List):- 
    search(H, List),
    subset(T, List).