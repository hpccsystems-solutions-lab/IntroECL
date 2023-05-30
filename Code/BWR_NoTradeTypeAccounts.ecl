IMPORT $;

NoTradeTypeAccounts :=  $.File_Accounts.File(TradeType NOT IN $.Sets.AcctTradeTypes);

COUNT(NoTradeTypeAccounts); //1730
OUTPUT(NoTradeTypeAccounts);	

