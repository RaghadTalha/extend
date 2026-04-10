% CMPSC 360 - Spring 2026
% Problem 2: Research Circle Problem
%
% Use this file to declare the knowledge base and rules
% for the research interests and collaborations described
% in the project PDF and p2.txt.
%
% IMPORTANT:
% - Copy the information from p2.txt into facts here.
% - Do NOT import the knowledge base from another file.

% Declare the facts here
collaborates(noah, maya).
collaborates(noah, ethan).
collaborates(ethan, sophia).
collaborates(sophia, grace).
collaborates(grace, liam).
collaborates(liam, maya).
collaborates(maya, olivia).
collaborates(olivia, noah).

interest(noah, machine_learning).
interest(noah, optimization).
interest(noah, algorithms).

interest(ethan, databases).
interest(ethan, optimization).

interest(sophia, machine_learning).
interest(sophia, databases).
interest(sophia, security).

interest(grace, databases).
interest(grace, optimization).

interest(liam, machine_learning).
interest(liam, optimization).

interest(maya, databases).
interest(maya, machine_learning).

interest(olivia, algorithms).
interest(olivia, security).

% helper rule for shared interest
shares_interest(X, Y) :-
    interest(X, I),
    interest(Y, I),
    X \= Y.

% helper rule for shared collaborator
shares_collaborator(X, Y) :-
    collaborates(X, C),
    collaborates(Y, C),
    X \= Y.

% Complete the following horn clause.
% An individual X is a research circle member if they
% share a research interest with someone other than
% themselves AND share a common collaborator with
% someone other than themselves.
research_circle_member(X) :-
    shares_interest(X, Y),
    X \=Y,
    shares_collaborator(X, Z),
    X \=Z.
