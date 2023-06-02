IMPORT $;
UID := $.UID_Accounts;
EXPORT STD_Accounts := MODULE
 EXPORT Layout := RECORD
  UID.RecID;
	UID.PersonID;
	UNSIGNED4 ReportDate  := (UNSIGNED4)UID.ReportDate;
	UID.IndustryCode;
	UID.Member;
	UNSIGNED4 OpenDate    := (UNSIGNED4)UID.OpenDate;
	UID.TradeType;
	UID.TradeRate;
	UID.Narr1;
	UID.Narr2;
	UID.HighCredit;
	UID.Balance;
	UID.Terms;
	UID.TermTypeR;
	UID.AccountNumber;
	UNSIGNED4 LastActivityDate := (UNSIGNED4)UID.LastActivityDate;
	UID.Late30Day;
	UID.Late60Day;
	UID.Late90Day;
	UID.TermType;
	END;
	EXPORT File := TABLE(UID,Layout):PERSIST('~MINI::BMF::PERSIST::STD_Accounts');
END;