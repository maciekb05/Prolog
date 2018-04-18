% dane

rodzina(
	osoba(jan, kowalski, data(5,kwiecien,1946), pracuje(tpsa,3000)),
	osoba(anna, kowalski, data(8,luty,1949), pracuje(szkola,1500)), 
	[
	 osoba(maria, kowalski, data(20,maj,1973), pracuje(argo_turist,4000)),
	 osoba(pawel, kowalski ,data(15,listopad,1979), zasilek)]).
       
rodzina(
	osoba(krzysztof, malinowski, data(24,lipiec,1950), bezrobocie),
	osoba(klara, malinowski, data(9,styczen,1951), pracuje(kghm,8000)),
	[
	 osoba(monika, malinowski, data(19,wrzesien,1980), bezrobocie)]
	).

rodzina(
	osoba(adam, pencak, data(14,lipiec,1950), pracuje(apple,1200)),
	osoba(aldona, pencak, data(7,styczen,1951), pracuje(google,2500)),
	[
	 osoba(tomasz, pencak, data(22,styczen,1997), pracuje(agh,20))]
	).
	
rodzina(
	osoba(mateusz, morawiecki, data(24,lipiec,1920), pracuje(pis,50000)),
	osoba(ewa, morawiecki, data(4,styczen,1981), pracuje(urzad,10000)),
	[
	 osoba(piotr, morawiecki, data(2,luty,1997), pracuje(lumpex,800))]
	).

% zaleznosci

maz(X) :-
	rodzina(X,_,_).

zona(X) :-
	rodzina(_,X,_).

dziecko(X) :-
	rodzina(_,_,Dzieci),
	nalezy(X,Dzieci).

istnieje(Osoba) :-
	maz(Osoba)
	;
	zona(Osoba)
	;
	dziecko(Osoba).

data_urodzenia(osoba(_,_,Data,_),Data).

pensja(osoba(_,_,_,pracuje(_,P)),P).
pensja(osoba(_,_,_,zasilek),500).
pensja(osoba(_,_,_,bezrobocie),0).

zarobki([],0).
zarobki([Osoba|Lista],Suma) :-
	pensja(Osoba,S),
	zarobki(Lista,Reszta),
	Suma is S + Reszta.

% narzedzia
nalezy(X,[X|_]).
nalezy(X,[_|Yogon]) :-
	nalezy(X,Yogon).
	
osoby(X):-
	X = [Z,C],
	istnieje(osoba(Z,C,_,_)).
dzieci(X):-
	X = [Z,C],
	dziecko(osoba(Z,C,_,_)).
pensjaOs(X):-
	X = [Imie,Nazwisko,Pensja],
	istnieje(osoba(Imie,Nazwisko,_,pracuje(_,Pensja))).
dzieci1979(X):-
	X = [Im, Naz],
	dziecko(osoba(Im,Naz,data(_,_,1979),_)).
zonaPrac(X):-
	X = [Im,Naz,Prac],
	zona(osoba(Im,Naz,_,pracuje(Prac,_))).
trudne(X):-
	X = [Im,Naz,Rok,Pens],
	istnieje(osoba(Im,Naz,data(_,_,Rok),pracuje(_,Pens))),
	Rok < 1950,
	Pens < 3000.
zarobkiAll(Zarobki):-
	bagof(X,istnieje(X),L),
	zarobki(L,Zarobki).
