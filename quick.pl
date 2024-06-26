add([],X,[T|X]).

add([H|T],X,[H|R]):-
    add(T,X,R).


partition(_, [], [], []).

partition(Pivot, [X|Xs], [X|L], R) :-
    X =< Pivot,
    partition(Pivot, Xs, L, R).

partition(Pivot, [X|Xs], L, [X|R]) :-
    X > Pivot,
    partition(Pivot, Xs, L, R).


quicksort([], []).

quicksort([X|Xs], Sorted) :-
    partition(X, Xs, L, R),
    quicksort(L, LSorted),
    quicksort(R, RSorted),
    add(LSorted, [X|RSorted], Sorted).

