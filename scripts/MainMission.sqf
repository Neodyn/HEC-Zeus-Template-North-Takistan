
if (isServer) then 
{

_markerArray = ["M1","M2","M3"];
_rnd 	= floor (random (count(_markerArray)));
_mrkMMSpawnPos = getMarkerPos (_markerArray select _rnd);


//hint "Create Radiotower";
	//creating the marker 

	_markerMM = createMarker ["mob_mm", _mrkMMSpawnPos];
	_markerMM setMarkerShape "Empty";
	
	
	sleep 0.3;

	//creating the vehicle

	_newPos = [getMarkerPos _markerMM, 5, 25, 10, 0, 0, 0] call BIS_fnc_findSafePos;
	
	_mm = createVehicle ["Land_TTowerBig_1_F", _newPos, [], 0, "CAN_COLLIDE"];
	//_mm setDammage 0.8;
	//uavdata = _mm;
	//publicVariable "uavdata";
	
	//_devicemm = createVehicle ["Land_SurvivalRadio_F", getPos _mm, [], 0, "CAN_COLLIDE"];
	//_devicemm attachTo [_mm,[0,0,-0.3]];
	//_mm addEventHandler ["HandleDamage", { if ((_this select 4) == "SatchelCharge_Remote_Mag") then [{_this select 2},{0}];}];
	_mm addEventHandler ["HandleDamage", { hint format["Projectile: %1\nDamage: %2", (_this select 4), (_this select 2)];
	if ((_this select 4) == "SatchelCharge_Remote_Ammo_Scripted") then [{(_this select 0) setDamage 1;},{0}];}];
	
	_markerstr = createMarker ["main_area", getPos _mm];
	_markerstr setMarkerShape "ELLIPSE";
	_markerstr setMarkerBrush "Grid";
	_markerstr setMarkerColor "ColorRed";
	_markerstr setMarkerSize [1000,1000];
	_markermainm = createMarker ["mmmarker", getPos _mm];
	_markermainm setMarkerType "hd_destroy";
	_markermainm setMarkerColor "ColorBlack";
	_markermainm setMarkerSize [0.7,0.7];
	_markermainm setMarkerText "Radio Tower";

	
	_grpmm1S = [getMarkerPos _markerMM, EAST, (configfile >> "CfgGroups" >> "EAST" >> "LOP_TKA" >> "Infantry" >> "LOP_TKA_Support_section")] call BIS_fnc_spawnGroup;
	
	//nul = [_grpmm1S,getPos _mm, 100] call CBA_fnc_taskPatrol;
	nul = [_grpmm1S,getPos _mm, 100, 7, "MOVE", "SAFE", "GREEN", "Limited", "STAG COLUMN"] call CBA_fnc_taskPatrol;
	
	_grpmm2S = [getMarkerPos _markerMM, EAST, (configfile >> "CfgGroups" >> "EAST" >> "LOP_TKA" >> "Infantry" >> "LOP_TKA_Support_section")] call BIS_fnc_spawnGroup;
	nul = [_grpmm2S,getPos _mm, 150, 7, "MOVE", "SAFE", "GREEN", "Limited", "STAG COLUMN"] call CBA_fnc_taskPatrol;
	
	_tank2 = createGroup OPFOR;
	_newPosTank1 = [getMarkerPos _markerMM, 50, 350, 10, 0, 0, 0] call BIS_fnc_findSafePos;
	[ _newPosTank1, 180, "LOP_TKA_BMP2", _tank2] call BIS_fnc_spawnvehicle;
	//nul = [_tank2,getPos _mm, 400] call CBA_fnc_taskPatrol;
	nul = [_tank2,getPos _mm, 400, 7, "MOVE", "SAFE", "GREEN", "Limited", "STAG COLUMN"] call CBA_fnc_taskPatrol;
	sleep 10;
	[ _newPosTank1, 100, "LOP_TKA_BMP1D", _tank2] call BIS_fnc_spawnvehicle;

	
	_cars1 = createGroup OPFOR;
	_newPosCar1 = [getMarkerPos _markerMM, 10, 250, 10, 0, 0, 0] call BIS_fnc_findSafePos;
	[_newPosCar1, 10, "LOP_TKA_UAZ_DshKM", _cars1] call BIS_fnc_spawnvehicle;
	//nul = [_cars1,getPos _mm, 250] call CBA_fnc_taskPatrol;
	nul = [_cars1,getPos _mm, 250, 7, "MOVE", "SAFE", "GREEN", "Limited", "STAG COLUMN"] call CBA_fnc_taskPatrol;
	sleep 10;
	//[_newPosCar1, 10, "LOP_TKA_UAZ_DshKM", _cars1] call BIS_fnc_spawnvehicle;
	
	_cars2 = createGroup OPFOR;
	_newPosCar2 = [getMarkerPos _markerMM, 100, 250, 10, 0, 0, 0] call BIS_fnc_findSafePos;
	[_newPosCar2, 10, "LOP_TKA_BTR60", _cars2] call BIS_fnc_spawnvehicle;
	//nul = [_cars1,getPos _mm, 250] call CBA_fnc_taskPatrol;
	nul = [_cars2,getPos _mm, 250, 7, "MOVE", "SAFE", "GREEN", "Limited", "STAG COLUMN"] call CBA_fnc_taskPatrol;

	
	
	
	//_aa1 = createGroup OPFOR;
	_newPosAA1 = [getMarkerPos _markerMM, 3, 25, 10, 0, 0, 0] call BIS_fnc_findSafePos;
	[_newPosAA1,15, "LOP_TKA_ZSU234", EAST] call BIS_fnc_spawnvehicle;
	
	
	
	_helo2 = createGroup OPFOR;
	[getMarkerPos _markerMM, 10, "LOP_TKA_Mi24V_UPK23", _helo2] call BIS_fnc_spawnvehicle;
	//nul = [_helo2,getPos _mm, 700] call CBA_fnc_taskPatrol;
	nul = [_helo2,getPos _mm, 700, 4, "MOVE", "SAFE", "GREEN", "Limited", "STAG COLUMN"] call CBA_fnc_taskPatrol;
	sleep 10;
	//[getMarkerPos _markerMM, 10, "LOP_TKA_Mi24V_UPK23", _helo2] call BIS_fnc_spawnvehicle;
	_helo3 = createGroup OPFOR;
	[getMarkerPos _markerMM, 10, "LOP_TKA_Mi24V_UPK23", _helo3] call BIS_fnc_spawnvehicle;
	//nul = [_helo3,getPos _mm, 900] call CBA_fnc_taskPatrol;
	nul = [_helo3,getPos _mm, 950, 6, "MOVE", "SAFE", "GREEN", "Limited", "STAG COLUMN"] call CBA_fnc_taskPatrol;

	
	_null = [west, "mob_mm", ["Main Mission deployed! Destroy the Radio Tower with 4 M183 demolition device's ", "Main Mission", "Main Mission"], getMarkerPos "mmmarker", false] spawn BIS_fnc_taskCreate;
	_null = ["mob_mm", "CREATED"] spawn BIS_fnc_taskSetState;

	waitUntil { !alive _mm };
	
	_null = ["mob_mm", "SUCCEEDED"] spawn BIS_fnc_taskSetState;
};