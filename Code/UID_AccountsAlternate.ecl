IMPORT $,STD;

uidRecs := RECORD
	UNSIGNED4 RecID; 
	$.File_Accounts.Layout;
END;

//myRecs := TABLE(File_Accounts, uidRecs);

uidRecs addUIDProject($.File_Accounts.File Le, INTEGER Cnt) := TRANSFORM
	node  := STD.System.Thorlib.node();
	nodes := CLUSTERSIZE;
	SELF.RecID := ((Cnt-1) * (nodes-1)) + node + Cnt;
	SELF := Le;
END;

EXPORT UID_AccountsAlternate := 
       SORT(PROJECT($.File_Accounts.File, 
			         addUIDProject(LEFT,COUNTER), LOCAL),RecID)
               :PERSIST('~CLASS::BMF::PERSIST::UID_Accounts');











// uidRecs addUIDIterate(myRecs l, myRecs r, INTEGER c) := TRANSFORM
	// node := Thorlib.node()+1;
	// nodes := Thorlib.nodes();
	
	// SELF.UniqueID := IF(l.UniqueID = 0, node, l.UniqueID + nodes);
	// SELF := r;
// END;

//export UID_Accounts    := ITERATE(myRecs, addUIDIterate(LEFT, RIGHT, COUNT), LOCAL) : PERSIST('~CLASS::BMF::PERSIST::UID_Accounts');