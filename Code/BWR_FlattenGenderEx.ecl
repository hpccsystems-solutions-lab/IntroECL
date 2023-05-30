IMPORT $;
Persons := $.File_Persons.File; 
r := RECORD
  Persons.State;
  MaleCnt    := COUNT(GROUP,Persons.Gender='M');
  FemaleCnt  := COUNT(GROUP,Persons.Gender='F');
  NeutralCnt := COUNT(GROUP,Persons.Gender='N');
  UnknownCnt := COUNT(GROUP,Persons.Gender='U');
END;


XTAB_Persons_Gender := SORT(TABLE($.File_Persons.File,r,State),State);

OUTPUT(XTAB_Persons_Gender);
