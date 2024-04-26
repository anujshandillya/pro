% Define the tree structure
tree(a, [b, c]).
tree(b, [d, e]).
tree(c, [f]).
tree(d, []).
tree(e, []).
tree(f, []).

add([],X,X).
add([H|T],X,[H|T2]):-
    add(T,X,T2).

reverseL([],[]).
reverseL([H|T],L2):-
    reverseL(T,L1),
    add(L1,[H],L2).

% BFS traversal to find the path to the goal node
bfs_path(Start, Goal, Path) :-
    bfs_path_helper([[Start]], Goal, List),
    reverseL(List,Path).

bfs_path_helper([[Goal|Path]|_], Goal, [Goal|Path]).

bfs_path_helper([Path|Paths], Goal, FinalPath) :-
    extend(Path, NewPaths),
    append(Paths, NewPaths, Paths1),
    bfs_path_helper(Paths1, Goal, FinalPath).

extend([Node|Path], NewPaths) :-
    tree(Node, Children),
    findall([Child, Node|Path], member(Child, Children), NewPaths),
    !.
extend(_, []).