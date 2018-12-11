/*
ADV_par_Variables by Belbo
contains all the variables that are put into description.ext via params.hpp
call from init.sqf AND initPlayerLocal.sqf via (as early as possible):
call compile preprocessfilelinenumbers "ADV_Setup\ADV_par_Variables.sqf";
or per preInit via cfgFunctions
*/

//Mods:
if (isClass (configFile >> "CfgPatches" >> "acre_main")) then {ADV_ACRE_present = 1} else {ADV_ACRE_present = 0};
if (isClass (configFile >> "CfgPatches" >> "task_force_radio")) then {ADV_TFAR_present = 1} else {ADV_TFAR_present = 0};

//radios
ADV_par_Radios = ["param_Radios",1] call BIS_fnc_getParamValue;
//NVGs for players

if (true) exitWith {};