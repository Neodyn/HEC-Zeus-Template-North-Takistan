/*
ADV_Variables by Belbo
contains all the variables that are important for a mission
call from init.sqf AND initPlayerLocal.sqf via (as early as possible):
call compile preprocessfilelinenumbers "ADV_Setup\ADV_Variables.sqf";
*/

//paths:
ADV_loadouts_PATH = "functions\gear\loadouts\";

//TFAR:
// if (isClass (configFile >> "CfgPatches" >> "task_force_radio")) then {
	// call ADV_fnc_tfarSettings;
// };

//ACRE:
if (isClass (configFile >> "CfgPatches" >> "acre_main")) then {
	call ADV_fnc_acreSettings;
};

if (true) exitWith {};