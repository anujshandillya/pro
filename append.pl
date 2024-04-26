append([],X,[X]).
append([H|T],X,[H|R]):-
    append(T,X,R).