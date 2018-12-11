if (isServer) then {
while {true} do { 
waitUntil {!isNil "MHQ"};
"Marker_MHQ" setmarkerpos getpos MHQ; 
sleep 0.5;
};
};