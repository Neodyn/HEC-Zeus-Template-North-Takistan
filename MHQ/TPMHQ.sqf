if (isNil "MHQ") exitwith {hint "You need to create the MHQ first"};
if ((speed (vehicle MHQ))  < 5 && alive MHQ) then 
{player setPos [(getMarkerpos "Marker_MHQ" select 0) + 5, getMarkerpos "Marker_MHQ" select 1,0]}
else {hint "Can't teleport , MHQ is moving or dead"};