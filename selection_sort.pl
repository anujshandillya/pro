min_list([X], X).
min_list([X|Xs], Min) :-
    min_list(Xs, TailMin),
    Min is min(X, TailMin).

del(_, [], []).
del(X, [X|Xs], Xs).
del(X, [Y|Xs], [Y|NewXs]) :-
    del(X, Xs, NewXs).

selection_sort([], []).
selection_sort(List, [Min|SortedTail]) :-
    min_list(List, Min),
    del(Min, List, NewList),
    selection_sort(NewList, SortedTail).

