//////////////////////////////
//--ALiVE TAKISTAN NATOFOR--//
//-------By M4RT14L---------//
//////////////////////////////

 if (!isServer && (player != player)) then { waitUntil {player == player}; waitUntil {time > 10}; };
 //call ADV_fnc_tfarSettings;
 //TFAR Workaround:
if (isClass (configFile >> "CfgPatches" >> "task_force_radio")) then {
	["unit", {
		if (player != (_this select 0)) then {
			player setVariable ["TFAR_controlledUnit",(_this select 0), true];
		} else {
			player setVariable ["TFAR_controlledUnit",nil, true];
		};

		TFAR_currentUnit = (_this select 0);
	}] call CBA_fnc_addPlayerEventHandler;
};


//if ( isNull (getAssignedCuratorLogic player) ) then { [str player, 3] remoteExecCall ["scripts\adv_fnc_createZeus",2]; };
//if (!isNil "flag_1") then { [flag_1] call ADV_fnc_flag; };
if (!isServer) then {
	call adv_fnc_collectFlags;
};
call {
	if ( missionNamespace getVariable ["ADV_par_moveMarker",2] isEqualTo 99 ) exitWith {
		setPlayerRespawnTime 9999;
	};
	adv_objects_flags call ADV_fnc_flag;
	if ( missionNamespace getVariable ["ADV_par_moveMarker",2] isEqualTo 3 ) then {
		ADV_handle_moveRespMarker = [120,20, missionNamespace getVariable ["ADV_par_remRespWest",0]] call ADV_fnc_moveRespMarker;
	};
};

if ( toUpper (str player) in ["Z1","Z2","Z3","Z4","Z5","OPF_Z1","OPF_Z2","OPF_Z3","OPF_Z4","OPF_Z5","IND_Z1","IND_Z2","IND_Z3","IND_Z4","IND_Z5"] || !isNull getAssignedCuratorLogic player ) then {
	
	if ( isNull (getAssignedCuratorLogic player) ) then { [str player, 3] remoteExecCall ["adv_fnc_createZeus",2]; };
	if ( isNil "adv_evh_zeusRespawn" ) then {
		adv_evh_zeusRespawn = player addEventhandler ["RESPAWN",{
			
			if ( isNull (getAssignedCuratorLogic player) ) then { [str player, 3] remoteExecCall ["adv_fnc_createZeus",2]; };
		}];
	};
};

params ["_unit","_JIP"];

if (_unit getvariable ["GOM_fnc_aircraftLoadoutAllowed",false]) then {

	_unit spawn GOM_fnc_addAircraftLoadout;

};


if (true) exitWith {};
