IMPORT $;
Persons := $.File_Persons.File;


EXPORT Sets := MODULE
 EXPORT MidwestStates  := ['ND','SD','NE','KS','MN','IA','MO','WI','IL','IN','MI','OH'];
 EXPORT AcctTradeTypes := ['O','I','R'];
 EXPORT AllStates      := SET(Persons,State);
END;