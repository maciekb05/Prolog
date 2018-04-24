trudne(dupa,tylek).

poznaj_slowo :-
	write('Podaj trudne slowo: '),
	nl,
	read(Trudne),
	answer(Trudne).
	
answer(Trudne) :-
	trudne(Trudne,_),
	write('Dziekuje, ale to juz znam'),
	nl.

answer(Trudne) :-
	not(trudne(Trudne,_)),
	write('A co to znaczy?'),
	nl,
	read(Znaczenie),
	assert(trudne(Trudne,Znaczenie)).
