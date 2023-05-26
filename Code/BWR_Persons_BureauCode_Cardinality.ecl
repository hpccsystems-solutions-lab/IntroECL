IMPORT $;
Rec := RECORD
 $.File_Persons.File.BureauCode;
END;

t    := TABLE($.File_Persons.File,
             {$.File_Persons.File.BureauCode});
OUTPUT(t);						 
dt   := DISTRIBUTE(t,HASH32(BureauCode));
sdt  := SORT(dt,BureauCode,LOCAL);
dsdt := DEDUP(sdt,BureauCode,LOCAL);

COUNT(dsdt);