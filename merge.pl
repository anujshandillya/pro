% Merge predicate
merge([], L, L).
merge(L, [], L).
merge([X|Xs], [Y|Ys], [X|Z]) :-
    X =< Y,
    merge(Xs, [Y|Ys], Z).
merge([X|Xs], [Y|Ys], [Y|Z]) :-
    X > Y,
    merge([X|Xs], Ys, Z).

% Split predicate
split([], [], []).
split([X], [X], []).
split([X,Y|Xs], [X|Xs1], [Y|Ys]) :-
    split(Xs, Xs1, Ys).

% Merge sort predicate
merge_sort([], []).
merge_sort([X], [X]).
merge_sort(List, Sorted) :-
    List = [_|_], % make sure the list is non-empty
    split(List, Left, Right),
    merge_sort(Left, SortedLeft),
    merge_sort(Right, SortedRight),
    merge(SortedLeft, SortedRight, Sorted).

