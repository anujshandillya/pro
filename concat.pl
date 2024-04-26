concat([],X,X).
cancat([H|T],X,[H|T2]):-
    concat(T,X,T2).