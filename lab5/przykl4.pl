b(1).
b(2).
c(2).
c(3).
 
a(X) :- b(X), !, c(X).
a(X) :- c(X).
