//////////////////////////////
//--ALiVE TAKISTAN NATOFOR--//
//-------By M4RT14L---------//
//////////////////////////////
{_x SetMarkerAlpha 0} forEach ["TAOR1","TAOR2","TAOR3","TAOR4"];

#include "initBriefing.hpp";
enableSaving [false,false];
//#include "funcs\compile_funcs.sqf"
//Functiones---------------------//
//call compile preprocessfile "globaltools.sqf";
//call compile preprocessfile "addactions.sqf";
//call compile preprocessFileLineNumbers "removeTasks.sqf";
//------------------------------//

//Time Of Day--------------------//
if (isServer) then {setDate [2017,(paramsArray select 2),(paramsArray select 3),(paramsArray select 0),(paramsArray select 1)]};
//------------------------------//

//Scripts-----------------------//
[] execVM "scripts\prayer.sqf";
[] execVM "scripts\fn_advancedSlingLoadingInit.sqf";
[] execVM "scripts\fn_advancedTowingInit.sqf";
//[] execVM "scripts\MainMission.sqf";
[] execVM "MHQ\MHQMarker.sqf";
//[] execVM "scripts\ied.sqf";
cTab_encryptionKey_west = "b";
//[] execVM "staticData.sqf";

//------------------------------//
  
//["Insurgency | ALiVE - END OF INIT..."] call ALiVE_fnc_Dump;

//if (!ins_debug) then {
	[] call compileFinal preprocessfilelinenumbers "scripts\intro.sqf";
//};

if (!hasInterface && !isDedicated) then {
 headlessClients = [];
 headlessClients pushBack player;
 publicVariable "headlessClients";
isHC = true;
};

//Zeus Magic
/* if (isServer) then 
{
	//CuratorModule = your curator module name; true = boolean, if civilians should be editable by zeus as well.
	[z1,true] execVM "scripts\ADV_zeus.sqf";
	
}; */

if (isClass(configFile >> "CfgPatches" >> "ace_explosives")) then {
    {
        _defuseHelper = "ACE_DefuseObject" createVehicleLocal (getPos _x);
        _defuseHelper attachTo [_x, [0,0,0]];
        _defuseHelper setVariable ["ACE_explosives_Explosive",_x];
    } forEach allMines;
};
missionNamespace setVariable ["ace_medical_healHitPointAfterAdvBandage",false];
if (true) exitWith {};
