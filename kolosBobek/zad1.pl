ksiazka(16, 'Flatlandia', autor('Edwin Abbott Abbott', 1838-1926), wydanie('Seel & Co', 1884)).
ksiazka(17, 'Flatlandia', autor('Edwin Abbott Abbott', 1838-1926), wydanie('Seel & Co', 1884)).
ksiazka(34, 'Kobieta z wydm', autor('Kobo Abe', 1924-1993), wydanie('Wydawnictwo Znak', 2007)).
ksiazka(87, 'Gargantua i Pantagruel', autor('Francois Rabelais', 1494-1553), wydanie('Siedmiorog', 2004)).


%% ksiazki wydane w XX wieku
xxWiek(X):- X = ksiazka(_,_,autor(_,_),wydanie(_,Rok)), Rok >= 1900, Rok < 2000.


%% autorzy, ktorzy zyli na przelomie stulecia
przelom(X):-
	ksiazka(_,_,X,_),
	X = autor(_,Ur-Zm),
	Ura is Ur//100,
	Zma is Zm//100,
	Ura \= Zma.

%% lista tytulow bez powtorzen ksiazek
tytul(X) :-
	ksiazka(_,X,_,_).	

bezdup(X):-
	setof(Y,tytul(Y),X).
