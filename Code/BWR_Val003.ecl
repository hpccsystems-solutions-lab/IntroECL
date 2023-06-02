IMPORT $;

SetDS           := DATASET($.Sets.AllStates,{STRING2 State});
OUTPUT(COUNT(SetDS),NAMED('CountDataIn'));
SortedSet       := SORT(SetDS,State);
DedupedSet      := DEDUP(SortedSet,State);
Val003          := COUNT(DedupedSet);
SetUniqueStates := SET(DedupedSet,State);
OUTPUT(Val003,NAMED('UniqueStates'));
OUTPUT(SetUniqueStates,NAMED('UniqueSet'));