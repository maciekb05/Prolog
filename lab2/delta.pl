delta(A,B,C,W) :-
	W = (B*B) - (4 * A * C).
	
kwadrat(A,B,C,W) :-
	delta(A,B,C,DELTA),
	DELTA<0,
	write('Wynik jest zespolony.').
	
kwadrat(A,B,C,W) :-
	delta(A,B,C,DELTA),
	DELTA>=0,
	W is (-B + sqrt(DELTA))/(2 * A),
	write('Pierwiastek: '),
	write(W),nl. 
	
kwadrat(A,B,C,W) :-
	delta(A,B,C,DELTA),
	DELTA>=0,
	W is (-B - sqrt(DELTA))/(2 * A),
	write('Pierwiastek: '),
	write(W),nl. 
