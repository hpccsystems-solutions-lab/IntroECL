﻿IMPORT $,STD;

//DATASETS of renormed tables created in Exercise 7B
RJPersons := DATASET('~MINI::BMF::OUT::Persons_Rejoined',$.File_Persons.Layout,THOR);

//SORT the APPENDed records, and then DEDUP.
AppendRecs   := $.File_Persons.File + RJPersons;
SortRecs     := SORT(AppendRecs,RECORD);
DedupPersons := DEDUP(SortRecs,RECORD);

//Count of rejoined records created in Exercise 7B
OUTPUT(COUNT(RJPersons),NAMED('Input_Recs_Persons'));

//This result should be zero
OUTPUT(COUNT(DedupPersons)-count($.File_Persons.File),NAMED('Dup_Persons'));

