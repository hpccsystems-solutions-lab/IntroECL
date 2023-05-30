IMPORT $;
// Use this code as a guide to completing 7A/7B
// IMPORT Training AS X;
Persons  := $.File_Persons.File;
Accounts := $.File_Accounts.File;
// OUTPUT(Persons);
// OUTPUT(Accounts);

// OUTPUT(COUNT(Accounts),NAMED('Cnt_Acct'));

// OUTPUT(Persons,{LastName,FirstName,Gender},NAMED('Names'));
AlphaPeeps := Persons(State = 'GA',City = 'ALPHARETTA');
OUTPUT(AlphaPeeps);
OUTPUT(COUNT(AlphaPeeps),NAMED('GA_AlphaPeep_Cnt'));

// OUTPUT(Persons(Birthdate[1..4] >= '2009'),NAMED('A85_BD'));

OUTPUT(SUM(Accounts(Balance < 10000),Balance),NAMED('Sum_Bal'));

