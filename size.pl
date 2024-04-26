size(0,[]).
size(N,[_|T]) :-
    size(M,T),
    N is M+1.