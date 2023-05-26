// IMPORT $;
// Account := $.File_Accounts.File;

// Val002A := ROUND((SUM(Account,HighCredit)/SUM(Account,Balance)));

// OUTPUT(Val002A);
IMPORT $;
Account := $.File_Accounts.File;


EXPORT Val002A := ROUND((SUM(Account,HighCredit)/SUM(Account,Balance)));
