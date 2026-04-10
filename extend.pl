extends(oak, maple).
extends(oak, pine).
extends(maple, birch).
extends(maple, cedar).
extends(birch, elm).
extends(cedar, ash).
extends(ash, cherry).
extends(pine, spruce).
extends(pine, willow).
extends(spruce, fir).
extends(willow, walnut).
extends(willow, poplar).
extends(palm, coconut).
extends(palm, date).



extends_to(X, Y) :-
    extends(X, Y).

extends_to(X, Y) :-
    extends(X, Z),
    extends_to(Z, Y).




