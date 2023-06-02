IMPORT $;
Persons := $.File_Persons.File;

MenInMStatesPersons := Persons(State IN $.Sets.MidwestStates,Gender = 'M');
																				
//Testing																				
OUTPUT(MenInMStatesPersons);																				
COUNT(MenInMStatesPersons);	//1158																			