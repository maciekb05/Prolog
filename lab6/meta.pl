:- include(readstr).
 
odpowiedz :-
	write('\'matka\' czy \'ojciec\'? '),nl,
	read_atom(X),
	write('kogo? '),nl,
	read_atom(Y),
	Q =.. [X,Kto,Y],
	display(Q),
	call(Q),
	write(Kto), nl.
	
rozwiaz1(G) :- call(G).
 
rozwiaz2(true) :- !.
rozwiaz2((G1,G2)) :- !,
	rozwiaz2(G1),
	rozwiaz2(G2).
rozwiaz2(G) :-
	clause(G,B),
	rozwiaz2(B).
 
rozwiaz3(true) :-!.
rozwiaz3((G1,G2)) :- !,
	rozwiaz3(G1),
	rozwiaz3(G2).
rozwiaz3(G) :-
	write('Wywoluje:  '),nl, write(G), nl,
	clause(G,B),
	rozwiaz3(B),
	write('Wyjscie:   '),nl, write(G), nl.
