/*

function for choosing loadouts
_this select 0 = function name for the loadout (string). example: "leader" or "command"
_this select 1 = target for the loadout (object). example: player
*/

_chosenLoadout = [_this, 0, "ADV_fnc_nil"] call BIS_fnc_param;
_target = [_this, 1, player] call BIS_fnc_param;
_object = [_this, 2, objNull] call BIS_fnc_param;

player removeEventHandler ["Respawn",ADV_respawn_EVH];

_target setVariable ["ADV_var_playerUnit",_chosenLoadout];

[_target] call ADV_fnc_applyLoadout;

call compile format ["ADV_respawn_EVH = %2 addEventhandler[""Respawn"",{_this call %1}];",_this select 0, _this select 1];

if (count _this > 2) then {
	removeAllActions _object;
	ADV_loadoutActionToAddBasic = true;
};

if (true) ExitWith {};