alumno(X,[X|_]).
alumno(X,[_|Y]) :- alumno(X,Y).

elementos_en_lista([],0).
elementos_en_lista([X|Y],N) :-elementos_en_lista(Y,W), N is W+1.

/* Concatenamos las listas Y1 y Y2 dando origen a la lista Y3 */
concatena([],Y,Y).
concatena([X|Y1],Y2,[X|Y3]) :- concatena(Y1,Y2,Y3).
