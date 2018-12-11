/*
loadout script by Belbo
adds the loadouts to the specific playable units for the side West
Call from initPlayerLocal.sqf via:
[Object,true,1] spawn ADV_fnc_loadoutsInit;
	with
	_this select 0 = object - target the loadout is applied to.
	_this select 1 = integer - if 1 gear will be saved, if 2 unit will respawn with it's original loadout.
*/

///// No editing necessary below this line /////
private ["_target"];
_target = [_this, 0, player] call BIS_fnc_param;

[_target] call ADV_fnc_applyLoadout;
ADV_respawn_EVH = _target addEventhandler ["Respawn", {_this call ADV_fnc_applyLoadout;}];

if (true) exitWith {};