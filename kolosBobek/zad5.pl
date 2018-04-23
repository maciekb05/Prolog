katyel([H|_],1,H).
katyel([_|T],N,W):-
	N > 1,
	N1 is N - 1,
	katyel(T,N1,W).
