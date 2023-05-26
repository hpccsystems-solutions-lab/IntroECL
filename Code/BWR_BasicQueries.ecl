// EXPORT BWR_BasicQueries := 'todo';
IMPORT $;
Persons := $.File_Persons.File;
Accts   := $.File_Accounts.File;

Persons;
Accts;
COUNT(Persons);
COUNT(Accts);
OUTPUT(Persons,{ID,LastName,FirstName},NAMED('Names_Only'));
OUTPUT(Accts,{ReportDate,HighCredit,Balance},NAMED('DateHCBal'));
