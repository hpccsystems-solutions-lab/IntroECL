IMPORT $;
Persons := $.File_Persons.File;

MyRec := RECORD
 // Persons.LastName;
 Persons.State;
 StateCount := COUNT(GROUP)
END;

MyTable := TABLE(Persons,MyRec,State);
// MySort := SORT(MyTable,-StateCount);
OUTPUT(MyTable);