IMPORT $,Std;
//EXERCISE 4B
Orig_Accts := $.File_Accounts.File;
Layout_Accts_RecID := RECORD
  UNSIGNED4 RecID := 0;
	Orig_Accts;
END;

AcctsTbl := TABLE(Orig_Accts,Layout_Accts_RecID); //a PROJECT would also work here

AcctsTbl IDRecs(AcctsTbl Le,AcctsTbl Ri) := TRANSFORM
  SELF.RecID := IF(Le.RecID=0,std.system.thorlib.node()+1,Le.RecID+CLUSTERSIZE);
  // SELF.RecID := Le.RecID + 1; //No local sequencing 
	SELF:= Ri;
END;

EXPORT 
//No Local Sequencing:
// UID_Accounts := ITERATE(AcctsTbl,IDRecs(LEFT,RIGHT)): PERSIST('~CLASS::BMF::PERSIST::UID_Accounts');
//Local Sequencing:
UID_Accounts := ITERATE(AcctsTbl,IDRecs(LEFT,RIGHT),LOCAL)
                       : PERSIST('~CLASS::BMF::PERSIST::UID_Accounts');
// OUTPUT(SORT(UID_Accounts,RecID));		

				 