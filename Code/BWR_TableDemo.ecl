IMPORT $;
Persons := $.File_Persons.File;

MyRec := RECORD
 Persons.State;
 Persons.ZipCode;
 Cnt := COUNT(GROUP);
 // NewField := 0;
// AnotherNewField := 'Bob';
END;

MyTable := TABLE(Persons,MyRec,State,ZipCode);
OUTPUT(SORT(MyTable,-Cnt));