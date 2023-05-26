IMPORT $;

EXPORT 
NoTradeTypeAccounts :=  $.File_Accounts.File(TradeType NOT IN $.Sets.AcctTradeTypes);

//Testing
// COUNT(NoTradeTypeAccounts);
// OUTPUT(NoTradeTypeAccounts);	

// DISTRIBUTION($.File_Accounts.File,TradeType);			 