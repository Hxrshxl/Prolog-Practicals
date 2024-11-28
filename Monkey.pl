/*
Monkey-Banana problem solved in Prolog (SWI-Prolog or GNU Prolog).
Usage: can_reach(X,Y).
*/

in_room(bananas).
in_room(chair).
in_room(monkey).
dexterous(monkey).
tall(chair).
can_move(monkey,chair,bananas).
can_climb(monkey,chair).	
can_reach(X,Y):-dexterous(X),is_close(X,Y).		
is_close(X,Z):-can_climb(X,Y),under(Y,Z),tall(Y).		
under(Y,Z):-in_room(X),in_room(Y),in_room(Z),can_move(X,Y,Z).