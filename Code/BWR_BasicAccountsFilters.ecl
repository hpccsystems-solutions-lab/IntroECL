﻿IMPORT $;
Accounts := $.File_Accounts.File;

OUTPUT(Accounts(Balance >= 100000));
OUTPUT(COUNT(Accounts(Balance >= 100000))); //1539
                            // (Late30Day + Late60Day + Late90Day) >= 1
OUTPUT(Accounts(Balance >= 100000, Late30Day >= 1 OR Late60Day >= 1 OR Late90Day >= 1));
OUTPUT(COUNT(Accounts(Balance >= 100000,(Late30Day<>0 OR Late60Day<>0 OR Late90Day<>0))));//148

Accounts((INTEGER)OpenDate[..4] >= 2000);
COUNT(Accounts(OpenDate[..4] >= '2000')); //4480

Accounts(TermType = '');
COUNT(Accounts(TermType = ' ')); //25923