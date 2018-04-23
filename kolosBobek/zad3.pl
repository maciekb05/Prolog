:- consult('zad3_kb.pl').

podaj_nazwe_kraju :-
	write('Podaj nazwe kraju: '),
	nl,
	read(Kraj),
	answer(Kraj).

koniec :-
	tell('zad3_kb.pl'),
	listing(graniczy),
	told,
	write('Done'),nl.

answer(Kraj) :-
	graniczy(Ktos,Kraj),
	write('Toz to somsiad '),
	write(Ktos),
	nl.
	
answer(Kraj) :-
	\+(graniczy(_,Kraj)),
	write('Podaj somsiada: '),
	nl,
	read(Somsiad),
	assert(graniczy(Somsiad,Kraj)).
	
