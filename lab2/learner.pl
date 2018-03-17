start :-  consult('learner_kb.pl'),
          nl,
          write('Type names entirely in lower case, followed by period.'), nl,
          write('Type "stop." to quit.'), nl,
          nl,
          process_a_query.

process_a_query :- 
                   write('State? '),nl,
                   read(State),
                   answer(State).

answer(stop) :-    write('Saving the knowledge base...'),nl,
                   tell('learner_kb.pl'),
                   write(':- dynamic(capital_of/2).'),nl,
                   listing(capital_of),
                   told,
                   write('Done.'),nl.

answer(State) :-   capital_of(State,City),
                   write('The capital of '),
                   write(State),
                   write(' is '),
                   write(City),nl,
                   nl,
                   process_a_query.

answer(State) :-   \+ capital_of(State,_),
                   write('I do not know the capital of that state.'),nl,
                   write('Please tell me.'),nl,
                   write('Capital? '),nl,
                   read(City),
                   write('Thank you.'),nl,nl,
                   assertz(capital_of(State,City)),
                   process_a_query.
