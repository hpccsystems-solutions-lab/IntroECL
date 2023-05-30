IMPORT $;
Accounts := $.File_Accounts.File;

IsInvoice     := Accounts.TradeType = 'I';
IsZeroBalance := Accounts.Balance = 0;

EXPORT val001 := COUNT(Accounts(IsInvoice AND IsZeroBalance));