/*
loadout script by Belbo
adds the loadouts to the specific playable units for the side West
Call from initPlayerLocal.sqf via:
[object,true] call ADV_fnc_applyLoadout;
	with
	_this select 0 = object - target the loadout is applied to.
	_this select 1 = boolean - whether or not the target in _zeus is supposed to be invincible.
*/

private [
	"_zeus",
	"_bwfleck_base", "_bwfleck_crew","_bwfleck_grpfhr","_bwfleck_mg4","_bwfleck_mg5","_bwfleck_grpschrfg28","_bwfleck_grpschrfg3","_bwfleck_sani","_bwfleck_eod","_bwfleck_pzfst","_bwfleck_rgw90","_bwfleck_schtz","_bwfleck_zgfhr","_bwtrop_crew","_bwfleck_off",
	"_bwtrop_base","_bwtrop_grpfhr","_bwtrop_mg4","_bwtrop_mg5","_bwtrop_grpschrfg28","_bwtrop_grpschrfg3","_bwtrop_sani","_bwtrop_eod","_bwtrop_pzfst","_bwtrop_rgw90","_bwtrop_schtz","_bwtrop_off","_bwtrop_zgfhr",
	"_uk_base",
	"_ussf_eod","_ussf_gren","_ussf_grpfhr","_ussf_m110","_ussf_mg","_ussf_m136","_ussf_sani","_ussf_schtz","_ussf_spotter","_ussf_xm2010",
	"_usocp_eod","_usocp_jav","_usocp_grpfhr","_usocp_gren","_usocp_m14","_usocp_m136","_usocp_m249","_usocp_m240","_usocp_sani","_usocp_schtz","_usocp_off","_usocp_zgfhr"];

// insert names of new units here in their correspondent classes:
_bwfleck_base = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwfleck_base_",_x];_bwfleck_base pushback _newGuy};
_bwfleck_crew = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwfleck_crew_",_x];_bwfleck_crew pushback _newGuy};
_bwfleck_grpfhr = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwfleck_grpfhr_",_x];_bwfleck_grpfhr pushback _newGuy};
_bwfleck_mg4 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwfleck_mg4_",_x];_bwfleck_mg4 pushback _newGuy};
_bwfleck_mg5 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwfleck_mg5_",_x];_bwfleck_mg5 pushback _newGuy};
_bwfleck_grpschrfg28 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwfleck_grpschrfg28_",_x];_bwfleck_grpschrfg28 pushback _newGuy};
_bwfleck_grpschrfg3 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwfleck_grpschrfg3_",_x];_bwfleck_grpschrfg3 pushback _newGuy};
_bwfleck_sani = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwfleck_sani_",_x];_bwfleck_sani pushback _newGuy};
_bwfleck_eod = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwfleck_eod_",_x];_bwfleck_eod pushback _newGuy};
_bwfleck_pzfst = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwfleck_pzfst_",_x];_bwfleck_pzfst pushback _newGuy};
_bwfleck_rgw90 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwfleck_rgw90_",_x];_bwfleck_rgw90 pushback _newGuy};
_bwfleck_schtz = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwfleck_schtz_",_x];_bwfleck_schtz pushback _newGuy};
_bwfleck_off = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwfleck_off_",_x];_bwfleck_off pushback _newGuy};
_bwfleck_zgfhr = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwfleck_zgfhr_",_x];_bwfleck_zgfhr pushback _newGuy};
_bwtrop_base = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwtrop_base_",_x];_bwtrop_base pushback _newGuy};
_bwtrop_crew = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwtrop_crew_",_x];_bwtrop_crew pushback _newGuy};
_bwtrop_grpfhr = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwtrop_grpfhr_",_x];_bwtrop_grpfhr pushback _newGuy};
_bwtrop_mg4 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwtrop_mg4_",_x];_bwtrop_mg4 pushback _newGuy};
_bwtrop_mg5 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwtrop_mg5_",_x];_bwtrop_mg5 pushback _newGuy};
_bwtrop_grpschrfg28 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwtrop_grpschrfg28_",_x];_bwtrop_grpschrfg28 pushback _newGuy};
_bwtrop_grpschrfg3 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwtrop_grpschrfg3_",_x];_bwtrop_grpschrfg3 pushback _newGuy};
_bwtrop_sani = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwtrop_sani_",_x];_bwtrop_sani pushback _newGuy};
_bwtrop_eod = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwtrop_eod_",_x];_bwtrop_eod pushback _newGuy};
_bwtrop_pzfst = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwtrop_pzfst_",_x];_bwtrop_pzfst pushback _newGuy};
_bwtrop_rgw90 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwtrop_rgw90_",_x];_bwtrop_rgw90 pushback _newGuy};
_bwtrop_schtz = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwtrop_schtz_",_x];_bwtrop_schtz pushback _newGuy};
_bwtrop_zgfhr = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwtrop_zgfhr_",_x];_bwtrop_zgfhr pushback _newGuy};
_bwtrop_off = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","bwtrop_off_",_x];_bwtrop_off pushback _newGuy};
_uk_base = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","uk_base_",_x];_uk_base pushback _newGuy};
_ussf_eod = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","ussf_eod_",_x];_ussf_eod pushback _newGuy};
_ussf_grpfhr = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","ussf_grpfhr_",_x];_ussf_grpfhr pushback _newGuy};
_ussf_m110 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","ussf_m110_",_x];_ussf_m110 pushback _newGuy};
_ussf_mg = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","ussf_mg_",_x];_ussf_mg pushback _newGuy};
_ussf_m136 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","ussf_m136_",_x];_ussf_m136 pushback _newGuy};
_ussf_sani = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","ussf_sani_",_x];_ussf_sani pushback _newGuy};
_ussf_schtz = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","ussf_schtz_",_x];_ussf_schtz pushback _newGuy};
_ussf_gren = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","ussf_gren_",_x];_ussf_gren pushback _newGuy};
_ussf_xm2010 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","ussf_xm2010_",_x];_ussf_xm2010 pushback _newGuy};
_ussf_spotter = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","ussf_spotter_",_x];_ussf_spotter pushback _newGuy};
_usocp_eod = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","usocp_eod_",_x];_usocp_eod pushback _newGuy};
_usocp_grpfhr = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","usocp_grpfhr_",_x];_usocp_grpfhr pushback _newGuy};
_usocp_gren = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","usocp_gren_",_x];_usocp_gren pushback _newGuy};
_usocp_jav = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","usocp_jav_",_x];_usocp_jav pushback _newGuy};
_usocp_m14 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","usocp_m14_",_x];_usocp_m14 pushback _newGuy};
_usocp_m136 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","usocp_m136_",_x];_usocp_m136 pushback _newGuy};
_usocp_m240 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","usocp_m240_",_x];_usocp_m240 pushback _newGuy};
_usocp_m249 = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","usocp_m249_",_x];_usocp_m249 pushback _newGuy};
_usocp_sani = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","usocp_sani_",_x];_usocp_sani pushback _newGuy};
_usocp_schtz = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","usocp_schtz_",_x];_usocp_schtz pushback _newGuy};
_usocp_off = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","usocp_off_",_x];_usocp_off pushback _newGuy};
_usocp_zgfhr = [];for "_x" from 1 to 30 do {_newGuy = format ["%1%2","usocp_zgfhr_",_x];_usocp_zgfhr pushback _newGuy};
_zeus = ["z1","z2","z3","z4","z5"];

///// No editing necessary below this line /////
private ["_object","_target","_invinciZeus"];
_target = [_this, 0, player] call BIS_fnc_param;
_object = str _target;

//switch to select the applicable loadout function
_playerUnit = switch true do {
	case (_object in _bwfleck_base): {"ADV_fnc_bwfleck_base"};
	case (_object in _bwfleck_crew): {"ADV_fnc_bwfleck_crew"};
	case (_object in _bwfleck_grpfhr): {"ADV_fnc_bwfleck_grpfhr"};
	case (_object in _bwfleck_mg4): {"ADV_fnc_bwfleck_mg4"};
	case (_object in _bwfleck_mg5): {"ADV_fnc_bwfleck_mg5"};
	case (_object in _bwfleck_grpschrfg28): {"ADV_fnc_bwfleck_grpschrfg28"};
	case (_object in _bwfleck_grpschrfg3): {"ADV_fnc_bwfleck_grpschrfg3"};
	case (_object in _bwfleck_sani): {"ADV_fnc_bwfleck_sani"};
	case (_object in _bwfleck_eod): {"ADV_fnc_bwfleck_eod"};
	case (_object in _bwfleck_pzfst): {"ADV_fnc_bwfleck_pzfst"};
	case (_object in _bwfleck_rgw90): {"ADV_fnc_bwfleck_rgw90"};
	case (_object in _bwfleck_schtz): {"ADV_fnc_bwfleck_schtz"};
	case (_object in _bwfleck_off): {"ADV_fnc_bwfleck_off"};
	case (_object in _bwfleck_zgfhr): {"ADV_fnc_bwfleck_zgfhr"};
	case (_object in _bwtrop_base): {"ADV_fnc_bwtrop_base"};
	case (_object in _bwtrop_crew): {"ADV_fnc_bwtrop_crew"};
	case (_object in _bwtrop_grpfhr): {"ADV_fnc_bwtrop_grpfhr"};
	case (_object in _bwtrop_mg4): {"ADV_fnc_bwtrop_mg4"};
	case (_object in _bwtrop_mg5): {"ADV_fnc_bwtrop_mg5"};
	case (_object in _bwtrop_grpschrfg28): {"ADV_fnc_bwtrop_grpschrfg28"};
	case (_object in _bwtrop_grpschrfg3): {"ADV_fnc_bwtrop_grpschrfg3"};
	case (_object in _bwtrop_sani): {"ADV_fnc_bwtrop_sani"};
	case (_object in _bwtrop_eod): {"ADV_fnc_bwtrop_eod"};
	case (_object in _bwtrop_pzfst): {"ADV_fnc_bwtrop_pzfst"};
	case (_object in _bwtrop_rgw90): {"ADV_fnc_bwtrop_rgw90"};
	case (_object in _bwtrop_schtz): {"ADV_fnc_bwtrop_schtz"};
	case (_object in _bwtrop_off): {"ADV_fnc_bwtrop_off"};
	case (_object in _bwtrop_zgfhr): {"ADV_fnc_bwtrop_zgfhr"};
	case (_object in _uk_base): {"ADV_fnc_uk_base"};
	case (_object in _ussf_eod): {"ADV_fnc_ussf_eod"};
	case (_object in _ussf_gren): {"ADV_fnc_ussf_gren"};
	case (_object in _ussf_grpfhr): {"ADV_fnc_ussf_grpfhr"};
	case (_object in _ussf_m110): {"ADV_fnc_ussf_m110"};
	case (_object in _ussf_mg): {"ADV_fnc_ussf_mg"};
	case (_object in _ussf_m136): {"ADV_fnc_ussf_m136"};
	case (_object in _ussf_sani): {"ADV_fnc_ussf_sani"};
	case (_object in _ussf_schtz): {"ADV_fnc_ussf_schtz"};
	case (_object in _ussf_spotter): {"ADV_fnc_ussf_spotter"};
	case (_object in _ussf_xm2010): {"ADV_fnc_ussf_xm2010"};
	case (_object in _usocp_eod): {"ADV_fnc_usocp_eod"};
	case (_object in _usocp_grpfhr): {"ADV_fnc_usocp_grpfhr"};
	case (_object in _usocp_jav): {"ADV_fnc_usocp_jav"};
	case (_object in _usocp_gren): {"ADV_fnc_usocp_gren"};
	case (_object in _usocp_m14): {"ADV_fnc_usocp_m14"};
	case (_object in _usocp_m136): {"ADV_fnc_usocp_m136"};
	case (_object in _usocp_m240): {"ADV_fnc_usocp_m240"};
	case (_object in _usocp_m249): {"ADV_fnc_usocp_m249"};
	case (_object in _usocp_sani): {"ADV_fnc_usocp_sani"};
	case (_object in _usocp_schtz): {"ADV_fnc_usocp_schtz"};
	case (_object in _usocp_off): {"ADV_fnc_usocp_off"};
	case (_object in _usocp_zgfhr): {"ADV_fnc_usocp_zgfhr"};
	default {"ADV_fnc_nil"};
};

_target setVariable ["ADV_var_playerUnit",_playerUnit];

if (true) exitWith {};