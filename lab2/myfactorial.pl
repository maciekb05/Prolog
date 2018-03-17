factorial(0,1).
factorial(Num,Res) :-
	Num > 0,
	Newnum is Num - 1,
	factorial(Newnum,Newres),
	Res is Num * Newres.
