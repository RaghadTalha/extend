% CMPSC 360 - Spring 2026
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
direct_extends(oak, maple).
direct_extends(oak, pine).
direct_extends(maple, birch).
direct_extends(maple, cedar).
direct_extends(birch, elm).
direct_extends(cedar, ash).
direct_extends(ash, cherry).
direct_extends(pine, spruce).
direct_extends(pine, willow).
direct_extends(spruce, fir).
direct_extends(willow, walnut).
direct_extends(willow, poplar).
direct_extends(palm, coconut).
direct_extends(palm, date).


% Complete the following horn clause(s)

% Base case: direct extension
extends_to(X, Y) :-
    direct_extends(X, Y).

% Recursive case: transitive extension
extends_to(X, Y) :-
    direct_extends(X, Z),
    extends_to(Z, Y).


% Example (once you fill in the facts and rules):
% swipl
?- ['extend.pl'].
?- extends_to(oak, cherry).
?- extends_to(pine, fir).

