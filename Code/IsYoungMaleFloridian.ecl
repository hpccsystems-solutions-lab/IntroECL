IMPORT $;
Persons := $.File_Persons.File;

IsFloridian := Persons.State = 'FL'; 

IsMale      := Persons.Gender = 'M';

IsBorn80    := Persons.Birthdate[1..4] > '1979' AND Persons.Birthdate <> '';

EXPORT IsYoungMaleFloridian := IsFloridian AND IsMale AND IsBorn80;


