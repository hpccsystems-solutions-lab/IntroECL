IMPORT $;
OUTPUT($.Limit_Value(27,100),NAMED('Use_n27'));
OUTPUT($.Limit_Value(127,100),NAMED('Use_maxVal100'));

OUTPUT($.ValidInRange(4,1,10),NAMED('In_Range'));
OUTPUT($.ValidInRange(40,1,10),NAMED('Out_of_Range'));
OUTPUT($.ValidInRange(4,-1,10),NAMED('NegativeParameter'));
OUTPUT($.ValidInRange(4,10,1),NAMED('ReversedParameter'));

