delta(A,B,C,Wynik) :- Wynik is B*B-4*A*C, write('obliczam delte'),nl.
pierwiastek(A,B,C) :- delta(A,B,C,W), W<0,!, write('Brak'),nl.
pierwiastek(A,B,C) :- delta(A,B,C,W), W=:=0,!, write('Jedno'),nl.
pierwiastek(A,B,C) :- delta(A,B,C,W), W>0,!, write('Dwa'),nl.
