IMPORT $,STD;
Person := $.File_Persons.File;
EXPORT STD_PersonsEx := MODULE
 EXPORT Layout := RECORD
  STRING25 Lname  := STD.Str.ToUpperCase(Person.Lastname);
  STRING15 Fname  := STD.Str.ToUpperCase(Person.firstname);
  STRING1 MiddleInitial := STD.Str.ToUpperCase(Person.Middlename);
	Person.Gender; //$.UID_Persons.Gender
  UNSIGNED4 DOB   := (UNSIGNED4)Person.BirthDate; //20,230,525
 END;


 EXPORT File := TABLE(Person,Layout):PERSIST('CLASS::BMF::PERSIST::TBLEX');
END;
// PTblOut;

