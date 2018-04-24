merge([Head1|Tail1], [Head2|Tail2], [Head1|W]) :-
	Head1 < Head2,
	merge(Tail1, [Head2|Tail2], W).
	
merge([Head1|Tail1], [Head2|Tail2], [Head2|W]) :-
	Head1 >= Head2,
	merge([Head1|Tail1], Tail2, W).

merge(X,[],X).
merge([],X,X).
