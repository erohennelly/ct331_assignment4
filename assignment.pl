%Q1 Definitions for isElementInList(El, List)
isElementInList(El,[El|_]).
isElementInList(El,[_|T]):- isElementInList(El,T).

%Q2 Definitions for mergeLists(List1, List2, Merged)
mergeLists([],List,List).
mergeLists([H|T],List,[H|Merged]):- mergeLists(T,List,Merged).


%Q3 Definitions for reverseList(List, ReversedList)
reverseList([],[]).
reverseList([H|T],ReversedList):- mergeLists(Reversed_List,[H],ReversedList),
reverseList(T,Reversed_List).

%Q4 insertElementIntoListEnd(El, List, NewList)
insertElementIntoListEnd(El,[ ],[El]).
insertElementIntoListEnd(El,[H|T],[H|NewList]) :- insertElementIntoListEnd(El,T,NewList).
