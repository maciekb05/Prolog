nalezy(H,[H|_]).
nalezy(X,[_|Lista]) :- nalezy(X,Lista).

sumuj([X],X).
sumuj([H|Lista],Wynik) :-
	nalezy(X,[H|Lista]),!,
	sumuj(Lista,WynikNizej),
	Wynik is WynikNizej + X.
