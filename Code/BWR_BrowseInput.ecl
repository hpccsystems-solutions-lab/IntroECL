IMPORT $;
//This file is used to verify that your data is ready to read and verify the record count.
Persons  := $.File_Persons.File;
Accounts := $.File_Accounts.File;

OUTPUT(Persons,NAMED('PersonsData'));
OUTPUT(COUNT(Persons),NAMED('TotalPersons'));

OUTPUT(Accounts,NAMED('AccountsData'));
OUTPUT(COUNT(Accounts),NAMED('TotalAccounts'));

