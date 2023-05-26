IMPORT $;
Account := $.File_Accounts.File;


EXPORT Test := ROUND((SUM(Account,HighCredit)/SUM(Account,Balance)));