IMPORT $;
Persons := $.File_Persons.File;

YoungMaleFloridaPersons := Persons($.IsYoungMaleFloridian);


COUNT(YoungMaleFloridaPersons); //3
OUTPUT(YoungMaleFloridaPersons);