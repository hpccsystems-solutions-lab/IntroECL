IMPORT $;
Persons := $.File_Persons.File;
EXPORT 
MenInMStatesPersons := Persons(State IN $.Sets.MidwestStates,Gender = 'M');
																				
//Testing																				
// OUTPUT(MenInMStatesPersons);																				
// COUNT(MenInMStatesPersons);																				