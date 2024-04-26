last([H],H).
last([_|T],R):-
    last(T,R).