porownaj([_,_,C,D|_]):-
	C = D.
	
zamien([A,B,C,D|Rest],X):-
	X = [A,B,D,C|Rest].
	
nalezy(X,[X|_]).
nalezy(X,[_|Tail]) :-
	nalezy(X,Tail).
	
dlugosc([],0).
dlugosc([_|Tail],Length):-
	dlugosc(Tail,X),
	Length is X + 1.
	
a2b([],[]).
a2b([a|Ta],[b|Tb]):-
	a2b(Ta,Tb).
	
sklej([],X,X).
sklej([X|L1],L2,[X|L3]):-
	sklej(L1,L2,L3).
	
nalezy1(X,L) :-
	sklej(_,[X|_],L).
	
ostatni(X,[X]).
ostatni(X,[_|T]):-
	ostatni(X,T).
	
ostatni1(X,L):-
	sklej(_,[X],L).
	
dodaj(X,L,[X|L]).

usun(X,[X|Tail],Tail).
usun(X,[Y|Tail],[Y|List]):-
	usun(X,Tail,List).
	
wstaw(X,L,Duza) :-
	usun(X,Duza,L).
	
nalezy2(X,L) :-
	usun(X,L,_).

zawiera(S,L) :-
	sklej(_,L2,L),
	sklej(S,_,L2).

permutacja([],[]).
permutacja([X|L],P) :-
	permutacja(L,L1),
	wstaw(X,L1,P).
 
permutacja2([],[]).
permutacja2(L,[X|P]) :-
	usun(X,L,L1),
	permutacja2(L1,P).
	
odwroc([],[]).
odwroc([H|T],L) :-
	odwroc(T,R),
	sklej(R,[H],L).
	
odwroc2(L,R):-
	odwr2(L,[],R).
	
odwr2([H|T],A,R):-
	odwr2(T,[H|A],R).
	
odwr2([],A,A).

wypisz([H|T]) :-
	put(H), wypisz(T).
wypisz([]).

plural(Noun, PL) :- 
	name(Noun, L), 
	name(s,T), 
	append(L,T, NL), 
	name(PL, NL).
	
	
usun3ostatnie(L,L1):-
	sklej(L1,[_,_,_],L).
	
usun3pierwsze(L,L1):-
	sklej([_,_,_],L1,L).
	
usun3pio(L,L1):-
	sklej([_,_,_],X,L),
	sklej(L1,[_,_,_],X).
	
parzysta([_,_]).
parzysta([_,_|Tail]):-
	parzysta(Tail).
	
nieparzysta(X):-
	 not(parzysta(X)).
	
palindrom(L):-
	odwroc(L,X),
	X = L.

przesun(L,W):-
	[P|R] = L,
	sklej(R,[P],W).
	
znaczy(0,zero).   znaczy(1,jeden).
znaczy(2,dwa).    znaczy(3,trzy).
znaczy(4,cztery). znaczy(5,piec).
znaczy(6,szesc).  znaczy(7,siedem).
znaczy(8,osiem).  znaczy(9,dziewiec).

przeloz([],_).
przeloz([H|T],X):-
	znaczy(H,Napis),
	przeloz(T,Z),
	sklej([Napis],Z,X).











	

