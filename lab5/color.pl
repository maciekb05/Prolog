panstwo(polska).
panstwo(bialorus).
panstwo(ukraina).
panstwo(slowacja).
panstwo(czechy).

kolor(czerwony).
kolor(niebieski).
kolor(zielony).

sasiad(polska,bialorus).
sasiad(polska,ukraina).
sasiad(polska,slowacja).
sasiad(polska,czechy).
sasiad(bialorus,ukraina).
sasiad(slowacja,ukraina).
sasiad(slowacja,czechy).

lista_panstw(L):-
	bagof(X,panstwo(X),L).
	
panstwo_kolor(L):-
	L = [Pan,Kol],
	panstwo(Pan),
	kolor(Kol).

pk(X,Y):-
	panstwo(X),
	kolor(Y).

lista_panstwo_kolor(L):-
	bagof([X,Y],pk(X,Y),L).
	
	
sklej([],X,X).
sklej([X|L1],L2,[X|L3]) :-
	sklej(L1,L2,L3).
