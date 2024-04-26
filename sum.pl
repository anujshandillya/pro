sum([],0).
sum([H|T],R):-
    sum(T,X),
    R is H+X.