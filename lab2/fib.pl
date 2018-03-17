fib(0,W):-
	W is 0.
fib(1,W):-
	W is 1.
fib(Num,Res):-
	Num > 1,
	Newnuma is Num - 1,
	Newnumb is Num - 2,
	fib(Newnuma,Newresa),
	fib(Newnumb,Newresb),
	Res is Newresa + Newresb.
