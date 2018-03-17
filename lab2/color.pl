color(red).
color(green).
color(blue).

paint(Pl,Bl,Ua,Sl,Cz):-
	color(Pl),
	color(Bl),
	color(Ua),
	color(Sl),
	color(Cz),
	Pl \= Bl, Pl \= Ua, Pl \= Sl, Pl \= Cz,
	Bl \= Ua, Ua \= Sl, Sl \= Cz.
