/// EXPORT BWR_BasicQueries := 'todo';
IMPORT $;
Persons := $.File_Persons.File;
Accts   := $.File_Accounts.File;

OUTPUT(Persons);
OUTPUT(Accts);
OUTPUT(COUNT(Persons),NAMED('PersonsCnt'));
OUTPUT(COUNT(Accts),NAMED('AcctCnt'));

OUTPUT(Persons,{ID,LastName,FirstName});
OUTPUT(Accts,{ReportDate,HighCredit,Balance});
OUTPUT(Persons,{ID,StreetAddress,City,State,ZipCode},NAMED('Address_Info'));
OUTPUT(Accts,{AccountNumber,LastActivityDate,Balance},NAMED('Acct_Activity'));



