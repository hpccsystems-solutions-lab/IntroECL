// EXPORT BWR_BasicQueries := 'todo';
IMPORT $;
Persons := $.File_Persons.File;
Accts   := $.File_Accounts.File;

OUTPUT(Persons);
OUTPUT(Accts);
OUTPUT(COUNT(Persons),NAMED('PersonsCnt'));
OUTPUT(COUNT(Accts),NAMED('AcctCnt'));

OUTPUT(Persons,{ID,LastName,FirstName},NAMED('IDNames'));

OUTPUT(Accts,{AccountNumber,LastActivityDate,Balance},NAMED('Acct_Activity'));



