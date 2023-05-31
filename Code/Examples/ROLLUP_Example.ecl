MyRec := RECORD
	STRING1   Value1;
	STRING1   Value2;
	UNSIGNED1 Value3;
END;

SomeFile := DATASET([{'C','G',1},
                     {'C','C',2},
                     {'A','X',3},
                     {'B','G',4},
                     {'A','B',5}],MyRec);

SortedTable := SORT(SomeFile,Value1);

//RECORDOF(SomeFile) RollThem(SomeFile L, MyRec R) := TRANSFORM
SortedTable RollThem(SortedTable Le, SortedTable Ri) := TRANSFORM
  SELF.Value3 := IF(Le.Value3 < Ri.Value3,Le.Value3,Ri.Value3);
  SELF.Value2 := IF(Le.Value2 < Ri.Value2,Le.Value2,Ri.Value2);
	SELF := Le; 
END;

RolledUpRecs := ROLLUP(SortedTable,
		             	     LEFT.Value1 = RIGHT.Value1,
					              RollThem(LEFT,RIGHT));
OUTPUT(RolledUpRecs);												
OUTPUT(RolledUpRecs,,'~CLASS::BMF::Demo',OVERWRITE);

//New File (File_LookupCSZ)
MyNewRec := RECORD
	STRING1   Value1;
	STRING1   Value2;
	UNSIGNED1 Value3;
  // UNSIGNED8 RecPos{VIRTUAL(FilePosition)};   //Exposing the Record Pointer
END;

NewData := DATASET('~CLASS::BMF::Demo',MyNewRec,FLAT);

NewData;





// OUTPUT(RolledUpRecs,,'~CLASS::BMF::OUT::Demo',CLUSTER('mythor[1]'),OVERWRITE);
 
/*
Processes as:
	LEFT   vs. 	RIGHT
	1 (AX3)			2 (AB5)		- match, run transform, output AB3
	1 (AB3)			3 (BG4)		- no match, output BG4
	3 (BG4)			4 (CX1)		- no match 
	4 (CX1)			5 (CC2)		- match, run transform, output CC1

Result set is:
	Rec#	Value1	Value2	Value3
	1				A				B				3
	2				B				G				4
	3				C				C				1
*/