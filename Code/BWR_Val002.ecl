IMPORT $;
Accounts := $.File_Accounts.File;
SumHighCredit := SUM(Accounts,HighCredit);
SumBalance    := SUM(Accounts,Balance);

val002 := ROUND(SumHighCredit/SumBalance);

OUTPUT(val002);

