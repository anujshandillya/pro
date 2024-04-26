add([],X,X).
add([H|T],X,[H|T2]):-
    add(T,X,T2).

reverseL([],[]).
reverseL([H|T],L2):-
    reverseL(T,L1),
    add(L1,[H],L2).