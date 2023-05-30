IMPORT $;
Persons := $.File_Persons.File;

OUTPUT(Persons(State = 'FL'),NAMED('FL_Peeps'));
OUTPUT(COUNT(Persons(State = 'FL')),NAMED('FL_PeepsCnt')); //479

OUTPUT(Persons(State = 'FL',City = 'MIAMI'),NAMED('MiamiPeeps'));
OUTPUT(COUNT(Persons(State = 'FL',City = 'MIAMI')),NAMED('MiamiPeepsCnt')); //34

OUTPUT(Persons(State = 'FL',City = 'MIAMI',ZipCode='33186'),NAMED('A33186'));
OUTPUT(COUNT(Persons(State = 'FL',City = 'MIAMI',ZipCode='33186')),NAMED('A33186Cnt')); //3

OUTPUT(Persons(FirstName >= 'B' AND FirstName < 'C'),NAMED('BFirstNames'));
OUTPUT(COUNT(Persons(FirstName[1] = 'B')),NAMED('BFirstNamesCnt'));//378

OUTPUT(Persons(FileDate[1..4] > '2000'),NAMED('FileDate2000'));
OUTPUT(COUNT(Persons((INTEGER)FileDate[..4] > 2000)),NAMED('FileDate2000Cnt'));//5

