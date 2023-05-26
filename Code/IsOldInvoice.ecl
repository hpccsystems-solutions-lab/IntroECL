IMPORT $;
Accounts := $.File_Accounts.File;
IsInvoice       := Accounts.TradeType = 'I';
IsBefore1995    := Accounts.ReportDate <> '' AND Accounts.ReportDate[..4] < '1995';
IsActiveBalance := Accounts.Balance > 0;

EXPORT IsOldInvoice := IsInvoice AND
                       IsBefore1995 AND
                       IsActiveBalance;
											 
											 