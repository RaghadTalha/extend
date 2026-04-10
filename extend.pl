 CMPSC 360 - Spring 2026
% Problem 1: Tree Extension Problem
%
% Use this file to declare the knowledge base and rules
% for the tree extension relationships described in the
% project PDF.
%
% IMPORTANT:
% - Declare all of your facts directly in this file.
% - Do NOT import the knowledge base from another file.
%
% Then complete the definition of extends_to/2 so that it
% succeeds when there is a (possibly multi-step) extension
% path from X to Y.

% Declare your facts here
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


% Complete the following horn clause(s)

% Base case: direct extension
extends_to(X, Y) :-
    extends(X, Y).
% Recursive case
extends_to(X, Y) :- extends(X, Z), extends_to(Z, Y).






