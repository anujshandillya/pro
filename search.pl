search(X,[X|_]).
search(X,[_|T]):- search(X,T).