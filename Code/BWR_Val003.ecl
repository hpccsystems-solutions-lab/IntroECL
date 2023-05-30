IMPORT $;

SetDS         := DATASET($.Sets.AllStates,{STRING2 State});
COUNT(SetDS);
SortedSet     := SORT(SetDS,State);
DedupedSet    := DEDUP(SortedSet,State);
DedupedSet;
// EXPORT 
Val003          := COUNT(DedupedSet);
SetUniqueStates := SET(DedupedSet,State);
OUTPUT(Val003);
OUTPUT(SetUniqueStates);