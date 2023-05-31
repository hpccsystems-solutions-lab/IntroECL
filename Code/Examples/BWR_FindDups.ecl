// Extract Duplicate Records
PtblRec := RECORD
  INTEGER8 sequence := 0;
  STRING2  State    := '';
  STRING20 City     := '';
  STRING25 Lname    := '';
  STRING15 Fname    := '';
END;

Temp := DATASET([{3000,'FL','BOCA RATON','LONDON','BRIDGE'},
                 {35,'FL','BOCA RATON','SMITH','FRANK'},
                 {50,'FL','BOCA RATON','SMITH','SUE'},
                 {135,'FL','BOCA RATON','SMITH','NANCY'},
                 {135,'FL','BOCA RATON','SMITH','NANCY'},
                 {235,'FL','BOCA RATON','SMITH','FRED'},
                 {335,'FL','BOCA RATON','TAYLOR','FRANK'},
                 {3500,'FL','BOCA RATON','JONES','FRANK'},
                 {3500,'FL','BOCA RATON','JONES','FRANK'},
                 {30,'FL','BOCA RATON','TAYLOR','RICHARD'}], PtblRec);
                 
PtblRec2 := RECORD
temp.sequence;
temp.State;
temp.City;
temp.Lname;
temp.Fname;
MyCnt := COUNT(GROUP);
END;
                 
SDupOut := TABLE(Temp,PtblRec2,RECORD);
SDupOut(MyCnt >= 2);                 