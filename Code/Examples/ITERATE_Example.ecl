MyRec := RECORD
	INTEGER2 Value1;
	INTEGER2 Value2;
END;
                   //{0,0} 1st Left Record
SomeFile := DATASET([{10,0},
                     {20,0},
                     {30,0},  
                     {40,0},
                     {50,0}],MyRec);

SomeFile AddThem(SomeFile Le, SomeFile Ri) := TRANSFORM
	SELF.Value2 := Le.Value2 + Ri.Value1; 
	SELF.Value1 := Ri.Value1;
END;
AddedRecs := ITERATE(SomeFile,AddThem(LEFT,RIGHT)):PERSIST('~BobPersist');

output(AddedRecs);




/* Processes as:
	LEFT.Value2   RIGHT.Value1
		0 (0)			1 (10)		- 0 + 10 = 10
		1 (10)		2 (20)		- 10 + 20 = 30
		2 (30)		3 (30)		- 30 + 30 = 60
		3 (60)		4 (40)		- 60 + 40 = 100
		4 (100)	5 (50)		- 100 + 50 = 150

AddedRecs result set is:
	Rec#	Value1	Value2
	1		10		10
	2		20		30	
	3		30		60
	4		40		100
	5		50		150
*/