rodzic(kasia,robert).
rodzic(tomek,robert).
rodzic(tomek,eliza).
rodzic(kasia,eliza).
rodzic(robert,anna).
rodzic(robert,magda).
rodzic(magda,jan).
 
kobieta(kasia).
kobieta(eliza).
kobieta(magda).
kobieta(anna).
 
mezczyzna(tomek).
mezczyzna(robert).
mezczyzna(jan).

matka(X,Y) :-
	rodzic(X,Y),
	kobieta(X).
	
ojciec(X,Y) :-
	rodzic(X,Y),
	mezczyzna(X).
	
brat(X,Y) :-
	matka(Z,X),
	matka(Z,Y),
	ojciec(C,X),
	ojciec(C,Y),
	mezczyzna(X),
	X \= Y.
	
siostra(X,Y) :-
	matka(Z,X),
	matka(Z,Y),
	ojciec(C,X),
	ojciec(C,Y),
	kobieta(X),
	X \= Y.
	
babcia(X,Y) :-
	kobieta(X),
	matka(X,Z),
	rodzic(Z,Y).
	
dziadek(X,Y) :-
	mezczyzna(X),
	ojciec(X,Z),
	rodzic(Z,Y).
	
przodek(X,Y) :-
	rodzic(X,Y).
 
przodek(X,Z) :-
	rodzic(X,Y),
	przodek(Y,Z).
	
potomek(X,Y) :-
	rodzic(Y,X).

potomek(X,Z) :-
	rodzic(Y,X),
	potomek(Y,Z).
	
krewny(X,Y) :-
	przodek(X,Y)
	;
	potomek(X,Y).

