﻿//First, install the Visualizer bundle
//ecl bundle install https://github.com/hpcc-systems/Visualizer.git
IMPORT $,Visualizer;

Persons := $.File_Persons.File;

Rec := RECORD
 Persons.State;
 UNSIGNED4 StateCnt := COUNT(GROUP);
END;

OUTPUT(TABLE(Persons,Rec,State),NAMED('choro_usStates'));
Visualizer.Choropleth.USStates('usStates',,'choro_usStates');


