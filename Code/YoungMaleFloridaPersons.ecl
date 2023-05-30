IMPORT $;
Persons := $.File_Persons.File;
EXPORT 
YoungMaleFloridaPersons := Persons($.IsYoungMaleFloridian);

//Testing
// COUNT(YoungMaleFloridaPersons);
// OUTPUT(YoungMaleFloridaPersons);