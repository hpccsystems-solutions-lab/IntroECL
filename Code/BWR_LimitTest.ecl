#OPTION('outputLimit','50');

IMPORT $;

Persons := $.File_Persons.File;

DS := DATASET(Set(Persons,StreetAddress),{STRING42 StreetAddress});

SortedSet:=Sort(DS,StreetAddress);

DedupedSet :=DEDUP(DS,StreetAddress);

COUNT(DedupedSet);