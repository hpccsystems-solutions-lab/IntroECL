IMPORT $;
EXPORT 
OldActiveInvoiceAccounts := $.File_Accounts.File($.IsOldInvoice);


//Testing
// COUNT(OldActiveInvoiceAccounts);
// OUTPUT(OldActiveInvoiceAccounts);
// SUM(OldActiveInvoiceAccounts,Balance);