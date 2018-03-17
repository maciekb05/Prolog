kolor(czerwony).
kolor(zielony).
kolor(niebieski).

koloruj(Polska,Bialorus,Ukraina,Slowacja,Czechy) :-
	kolor(Polska),
	kolor(Bialorus),
	kolor(Ukraina),
	kolor(Slowacja),
	kolor(Czechy),
	Polska \= Bialorus,
	Polska \= Ukraina,
	Polska \= Slowacja,
	Polska \= Czechy,
	Bialorus \= Ukraina,
	Slowacja \= Ukraina,
	Czechy \= Slowacja.

kolorek(X,Y) :-
	kolor(X),
	kolor(Y),
	X \= Y.
