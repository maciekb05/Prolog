ksiazka(16, 'Flatlandia', autor('Edvin Abbot', 1838-1926),wydanie('Sell & Co',1884)).
ksiazka(28, 'R. U. R.', autor('Karel Capek', 1890-1938),wydanie('Palyers Press',2002)).
ksiazka(34, 'Kobieta z wydm', autor('Kobo Abe', 1924-1993),wydanie('Wydawnictwo Znak',2007)).
ksiazka(36, 'Zamek', autor('Frans Kafka', 1883-1924),wydanie('Zielona Sowa',2001)).
ksiazka(37, 'Gargantua i Pantagruel', autor(' François Rabelais', 1494-
1553),wydanie('Siedmioróg',2004)).

poSmierci(X) :-
	ksiazka(_,X,autor(_,_-Sm),wydanie(_,Wyd)),
	Wyd > Sm.
	
mogliSieSpotkac(X,Y) :-
	ksiazka(_,_,autor(X,Urx-Smx),_),
	ksiazka(_,_,autor(Y,Ury-Smy),_),
	X \= Y,
	Urx < Smy,
	Smx > Ury.
	
mogliSieSpotkac(X,Y) :-
	ksiazka(_,_,autor(X,Urx-Smx),_),
	ksiazka(_,_,autor(Y,Ury-Smy),_),
	X \= Y,
	Ury < Smx,
	Smy > Urx.
	
czyZyje(X,A) :-
	ksiazka(_,_,autor(A,Ur-Sm),_),
	Ur < X,
	Sm > X.
autorzy(X,L) :-
	setof(Y,czyZyje(X,Y),L).
