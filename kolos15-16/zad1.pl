ksiazka(16,'Flatlandia',autor('Abbott', 1838-1926),wydanie('Seel & Co',1884)).
ksiazka(16,'Flatlandia',autor('Abbott', 1838-1926),wydanie('Sell & Book',1884)).
ksiazka(16,'Flatlandia',autor('Abbott', 1838-1926),wydanie('Dupa',1884)).
ksiazka(28,'RUR',autor('Capek', 1890-1938),wydanie('Players Press',2002)).
ksiazka(34,'Kobieta z wydm',autor('Abe', 1924-1993),wydanie('Wydawnictwo Znak',2007)).
ksiazka(34,'Kobieta z wydm',autor('Abe', 1924-1993),wydanie('Wydawnictwo Znak2',2007)).
ksiazka(56,'Zamek',autor('Kafka', 1883-1924),wydanie('Zielona Sowa',2001)).
ksiazka(87,'Gargantua i Pantagruel',autor('Rabelias', 1494-1553),wydanie('Siedmiorog',2004)).

% Pary wydawnictw, ktore wydaly ksiazke o takim samym tytule : tenSamTytul(Tytul,Wydawnictwa).
tenSamTytul(Tytul,List) :-
	ksiazka(_,Tytul,_,wydanie(Wyd1,_)),
	ksiazka(_,Tytul,_,wydanie(Wyd2,_)),
	Wyd1 \= Wyd2,
	List = [Wyd1,Wyd2]. 
	
% Wydawnictwa, ktore wydawaly ksiazke po smierci autora : poSmierci(Tytul,Wydawnictwo).
poSmierci(Tyt,Wyd) :-
	ksiazka(_,Tyt,autor(_,_-Smierc),wydanie(Wyd,Data)),
	Data > Smierc.
	
% Lista wydawnictw, ktore wydaly przynajmniej jedna ksiazke autora urodzonego w XIX wieku
ksiazkaXIX(Wydawnictwo) :-
	ksiazka(_,_,autor(_,Ur-_),wydanie(Wydawnictwo,_)),
	Ur > 1900,
	Ur < 2000.
	
wydXIXwiek(Lista):-
	bagof(Wyd,ksiazkaXIX(Wyd),Lista).
