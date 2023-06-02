IMPORT $;

OldActiveInvoiceAccounts := $.File_Accounts.File($.IsOldInvoice);


//Testing
COUNT(OldActiveInvoiceAccounts); //36
OUTPUT(OldActiveInvoiceAccounts);
