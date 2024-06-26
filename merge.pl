merge([], L, L).
merge(L, [], L).
merge([X|Xs], [Y|Ys], [X|Z]) :-
    X =< Y,
    merge(Xs, [Y|Ys], Z).
merge([X|Xs], [Y|Ys], [Y|Z]) :-
    X > Y,
    merge([X|Xs], Ys, Z).


divide([], [], []).
divide([X], [X], []).
divide([X,Y|Xs], [X|Xs1], [Y|Ys]) :-
    divide(Xs, Xs1, Ys).


merge_sort([], []).
merge_sort([X], [X]).
merge_sort(List, Sorted) :-
    List = [_|_],
    divide(List, Left, Right),
    merge_sort(Left, SortedLeft),
    merge_sort(Right, SortedRight),
    merge(SortedLeft, SortedRight, Sorted).