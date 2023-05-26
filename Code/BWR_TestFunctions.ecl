IMPORT $;
//How to test your functions! :-)

$.Limit_Value(2,10);
$.Limit_Value(12,10);

$.ValidInRange(3,1,10);  //should be "In Range"
$.ValidInRange(12,1,10); //should be "Out of Range"
$.ValidInRange(1,-1,3);  //"Parameter is Negative"
$.ValidInRange(2,10,1);  //"Parameters are reversed"

