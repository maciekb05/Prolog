imie(tomek).

pobierz :-
	write('Napisz imie zenskie'),
	nl,
	read(Imie),
	answer(Imie).
	
answer(Imie) :-
	imie(Imie),
	write('Dzieki'),
	nl.
	
answer(Imie) :-
	not(imie(Imie)),
	write('Nie znam'),
	nl,	
	assert(imie(Imie)).
