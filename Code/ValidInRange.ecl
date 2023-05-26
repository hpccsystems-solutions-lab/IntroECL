EXPORT 
ValidInRange(PassedVal, LoVal, HiVal) := FUNCTION
 IsNegative  := LoVal < 0 OR HiVal < 0;    
 IsBackwards := HiVal < LoVal;  
 IsInRange   := PassedVal BETWEEN LoVal AND HiVal;              
 RETURN MAP(IsNegative  => 'Invalid Input - Negative Value',
            IsBackwards => 'Invalid Input, parameters are reversed',
            IsInRange   => 'In Range',
                           'Out of range');
END;