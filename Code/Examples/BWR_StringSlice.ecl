Myds := DATASET([{'abcdefghijklmnop'}],{STRING myString});

Extract2 := NORMALIZE(myds,LENGTH(LEFT.myString),TRANSFORM({STRING strOut},
                                                            SELF.strout := LEFT.mystring[(COUNTER*2)-1..(COUNTER*2)]));

Extract2(strOut<>'');                                                                              