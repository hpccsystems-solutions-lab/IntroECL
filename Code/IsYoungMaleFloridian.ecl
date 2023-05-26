IMPORT $;
Persons := $.File_Persons.File;

IsFloridian := Persons.State = 'FL';

IsMale      := Persons.Gender = 'M';

IsBorn80    := Persons.Birthdate[..4] > '1979' AND Persons.Birthdate <> '';

//Syntax Check ONLY - Do not submit to cluster! :-)
EXPORT IsYoungMaleFloridian := IsFloridian AND IsMale AND IsBorn80;

// YoungMaleFloridians := Persons($.IsYoungMaleFloridian);