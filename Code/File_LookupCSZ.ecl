﻿EXPORT File_LookupCSZ := MODULE
  EXPORT Layout := RECORD
   UNSIGNED4  CSZ_ID;
   STRING20   City;
   STRING2    State;
   UNSIGNED3  ZipCode;
   END;

  EXPORT File := DATASET('~MINI::BMF::OUT::LookupCSZ',Layout,FLAT);
END;