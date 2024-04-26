% Base case: Two empty lists are equal
lists_equal([], []).

% If the first list is empty, the second list must also be empty to be equal
lists_equal([], [_|_]) :- !, fail.

% If the second list is empty, the first list must also be empty to be equal
lists_equal([_|_], []) :- !, fail.

% If both lists are non-empty, check if their heads are the same
lists_equal([X|Xs], Y) :-
    select(X, Y, Ys), % Remove X from Y, and store the result in Ys
    lists_equal(Xs, Ys).
