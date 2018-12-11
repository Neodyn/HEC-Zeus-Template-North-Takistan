/*
gear-adding function by belbo
adds the loadouts from ADV_Setup\gear\west\*.sqf to the units
If custom content is added to the units, they possibly have to be added to _glrfls (if there are rifles with grenade launchers).
define per cfgFunctions or from init.sqf or initPlayerLocal.sqf as early as possible via
ADV_fnc_gear = compile preprocessFileLineNumbers "ADV_Setup\gear\ADV_fnc_gear.sqf";
*/

private ["_unit"];
_unit = _this select 0; 

//a lot of arrays
_medicBackPacks = ["B_AssaultPack_rgr_Medic","B_FieldPack_ocamo_Medic","B_FieldPack_oucamo_Medic","B_AssaultPack_rgr_ReconMedic","BWA3_AssaultPack_Medic","B_mas_AssaultPack_mul_Medic","B_mas_AssaultPack_des_Medic","B_mas_AssaultPack_black_Medic","B_mas_AssaultPack_wint_Medic","B_mas_AssaultPack_rng_Medic","O_mas_AssaultPack_flo_Medic","O_mas_AssaultPack_blk_Medic"];
_ManPacks = ["tf_mr3000","tf_anprc155","tf_rt1523g","clf_prc117g_ap_multi","clf_nicecomm2_multi","clf_nicecomm2_coy","clf_nicecomm2_prc117g_multi","clf_nicecomm2_prc117g_coy","ACRE_PRC117F","ACRE_PRC77"];
_NVGoggles = ["NVGoggles","NVGoggles_OPFOR","NVGoggles_INDEP"];
if (isClass(configFile >> "CfgPatches" >> "tfa_units")) then {_NVGoggles append ["TFA_NVGoggles","TFA_NVGoggles2"];};
if (isClass(configFile >> "CfgPatches" >> "rhs_main")) then {_NVGoggles append ["rhsusf_ANPVS_14","rhsusf_ANPVS_15"];};
_disposableLaunchers = ["BWA3_Pzf3","BWA3_RGW90","STI_M136","rhs_weap_M136","rhs_weap_M136_hedp","rhs_weap_M136_hp"];

//removals:
removeUniform _unit;
removeallItems _unit;
removeAllAssignedItems _unit;
removeallWeapons _unit;
removeHeadgear _unit;
removeBackpack _unit;
removeVest _unit;
{_unit removeMagazine _x} forEach magazines _unit;
//...and readding. Clothing:
if ((typeName (_uniform)) == "ARRAY") then {_uniform = _uniform call BIS_fnc_selectRandom;};
_unit forceAddUniform _uniform;
if ((typeName (_vest)) == "ARRAY") then {_vest = _vest call BIS_fnc_selectRandom;};
_unit addVest _vest;
if ((typeName (_backpack)) == "ARRAY") then {_backpack = _backpack call BIS_fnc_selectRandom;};
_unit addBackpack _backpack;
clearMagazineCargoGlobal (unitBackpack _unit);
clearItemCargoGlobal (unitBackpack _unit);
clearWeaponCargoGlobal (unitBackpack _unit);
if ((typeName (_headgear)) == "ARRAY") then {_headgear = _headgear call BIS_fnc_selectRandom;};
_unit addHeadgear _headgear;
if (_useProfileGoggles == 0) then {
	removeGoggles _unit;
	if ((typeName (_goggles)) == "ARRAY") then {_goggles = _goggles call BIS_fnc_selectRandom;};
	_unit addGoggles _goggles;
};

//radios
//TFAR-radios
if (isClass (configFile >> "CfgPatches" >> "task_force_radio")) then {
	if (_givePersonalRadio) then {
		_unit linkItem TFAR_setting_DefaultRadio_Rifleman_West;
	} else {
		_unit linkItem TFAR_setting_DefaultRadio_Rifleman_West;
	};
} else {
	if (isClass (configFile >> "CfgPatches" >> "acre_main")) then {
		{_unit addItem _x;} forEach _ACREradios;
	} else {
		_unit linkItem "ItemRadio";
	};
};
	
//removing FAKs/MediKits/AGM medic stuff again and adding FAKs/MediKits
if (_backpack in _medicBackPacks || (isClass (configFile >> "CfgPatches" >> "ACE_Medical"))) then {
	_unit removeItems "MediKit";
	_unit removeItems "FirstAidKit";
	if (isClass (configFile >> "CfgPatches" >> "ACE_Medical")) then {
		_ACE_Items = ["ACE_atropine","ACE_fieldDressing","ACE_elasticBandage","ACE_quikclot","ACE_bloodIV","ACE_bloodIV_500","ACE_bloodIV_250","ACE_bodyBag","ACE_epinephrine","ACE_morphine","ACE_packingBandage","ACE_personalAidKit","ACE_plasmaIV","ACE_plasmaIV_500","ACE_plasmaIV_250","ACE_salineIV","ACE_salineIV_500","ACE_salineIV_250","ACE_surgicalKit","ACE_tourniquet"];
		{_unit removeItems _x} forEach _ACE_Items;
	};
};
if (!(isClass (configFile >> "CfgPatches" >> "ACE_Medical")) && _mediKit == 0) then {
	for "_i" from 1 to _FirstAidKits do	{
		_unit addItem "FirstAidKit";
	};
};
if (!(isClass (configFile >> "CfgPatches" >> "ACE_Medical")) && _mediKit >= 1) then{
	_unit addItemToBackpack "MediKit";
	for "_i" from 1 to _FirstAidKits do	{
		_unit addItemToBackpack "FirstAidKit";
	};
};

//granades:
_unit addMagazines ["HandGrenade", _grenadeHE];
_unit addMagazines ["SmokeShell", _grenadeSmokeWhite];
_unit addMagazines ["SmokeShellYellow", _grenadeSmokeYellow];
_unit addMagazines ["SmokeShellOrange", _grenadeSmokeOrange];
_unit addMagazines ["SmokeShellPurple", _grenadeSmokePurple];
_unit addMagazines ["SmokeShellGreen", _grenadeSmokeGreen];
_unit addMagazines ["SmokeShellRed", _grenadeSmokeRed];
_unit addMagazines ["SmokeShellBlue", _grenadeSmokeBlue];
_unit addMagazines ["Chemlight_Yellow", _chemlightYellow];
_unit addMagazines ["Chemlight_Red", _chemlightRed];
_unit addMagazines ["Chemlight_Green", _chemlightGreen];
_unit addMagazines ["Chemlight_Blue", _chemlightBlue];
_unit addMagazines ["1Rnd_HE_Grenade_shell", _40mmHeGrenadesAmmo];
_unit addMagazines ["1Rnd_Smoke_Grenade_shell", _40mmSmokeGrenadesWhite];
_unit addMagazines ["1Rnd_SmokeYellow_Grenade_shell", _40mmSmokeGrenadesYellow];
_unit addMagazines ["1Rnd_SmokeOrange_Grenade_shell", _40mmSmokeGrenadesOrange];
_unit addMagazines ["1Rnd_SmokeRed_Grenade_shell", _40mmSmokeGrenadesRed];
_unit addMagazines ["1Rnd_SmokePurple_Grenade_shell", _40mmSmokeGrenadesPurple];
_unit addMagazines ["1Rnd_SmokeBlue_Grenade_shell", _40mmSmokeGrenadesBlue];
_unit addMagazines ["1Rnd_SmokeGreen_Grenade_shell", _40mmSmokeGrenadesGreen];
_unit addMagazines ["UGL_FlareWhite_F", _40mmFlareWhite];
_unit addMagazines ["UGL_FlareYellow_F", _40mmFlareYellow];
_unit addMagazines ["UGL_FlareRed_F", _40mmFlareRed];
_unit addMagazines ["UGL_FlareGreen_F", _40mmFlareGreen];
_unit addMagazines ["rhs_mag_M433_HEDP", _M433HEPD];
_unit addMagazines ["rhs_mag_M441_HE", _M441HE];
_unit addMagazines ["rhs_mag_m4009", _M4009Stun];
_unit addMagazines ["rhs_mag_m576", _M576Buckshot];
_unit addMagazines ["BWA3_DM25", _DM25White];
_unit addMagazines ["BWA3_DM32_Orange", _DM25Orange];
_unit addMagazines ["BWA3_DM32_Yellow", _DM25Yellow];
_unit addMagazines ["BWA3_DM51A1", _DM51A1];
_unit addMagazines ["rhs_mag_an_m14_th3", _M14TH3];
_unit addMagazines ["rhs_mag_an_m8hc", _M8HCWhite];
_unit addMagazines ["rhs_mag_m18_green", _M8HCGreen];
_unit addMagazines ["rhs_mag_m18_purple", _M8HCPurple];
_unit addMagazines ["rhs_mag_m18_red", _M8HCRed];
_unit addMagazines ["rhs_mag_m18_yellow", _M8HCYellow];
_unit addMagazines ["rhs_mag_m67", _M67Frag];
_unit addMagazines ["rhs_mag_m7a3_cs", _M7A3CS];
_unit addMagazines ["rhs_mag_mk84", _MK84Stun];
_unit addMagazines ["rhs_mag_mk3a2", _MK3A2Conc];

if !(isClass (configFile >> "CfgPatches" >> "ACE_attach")) then {
	_IR_GrenType = switch (side (group _unit)) do {
		case west: {"B_IR_Grenade"};
		case east: {"O_IR_Grenade"};
		case independent: {"I_IR_Grenade"};
		default {"I_IR_Grenade"};
	};
	_unit addMagazines [_IR_GrenType, _IRgrenade];
};
_unit addMagazines ["UGL_FlareCIR_F", _40mmFlareIR];
_unit selectWeapon "SmokeShellMuzzle";

//weapons
[_unit,_binocular,3] call BIS_fnc_addWeapon;
[_unit,_handgun,_handgunAmmo select 0,_handgunAmmo select 1] call BIS_fnc_addWeapon;
_itemsHandgun pushback _handgunSilencer;
{_unit addHandgunItem _x} forEach _itemsHandgun;
if (_launcher in _disposableLaunchers) then {
	_launcherAmmo set [0,1];
};
[_unit,_launcher,_launcherAmmo select 0,_launcherAmmo select 1] call BIS_fnc_addWeapon;
if ((typeName (_primaryWeapon)) == "ARRAY") then {_primaryWeapon = _primaryWeapon call BIS_fnc_selectRandom;};
[_unit,_primaryWeapon,_primaryweaponAmmo select 0,_primaryweaponAmmo select 1] call BIS_fnc_addWeapon;
if (!isNil "_additionalAmmo") then {
	if (typeName (_additionalAmmo select 1) == "STRING") then {
		[_unit,_additionalAmmo select 0,_additionalAmmo select 1] call ADV_fnc_addMagazine;
	} else {
		_unit addMagazines [_additionalAmmo select 1, _additionalAmmo select 0];
	};
};
if (!isNil "_additionalAmmo") then { _unit addMagazines [_additionalAmmo select 1, _additionalAmmo select 0]; };
if (!isNil "_additionalAmmo2") then { _unit addMagazines [_additionalAmmo2 select 1, _additionalAmmo2 select 0]; };
if (!isNil "_additionalAmmo3") then { _unit addMagazines [_additionalAmmo3 select 1, _additionalAmmo3 select 0]; };
if (!isNil "_additionalAmmo4") then { _unit addMagazines [_additionalAmmo4 select 1, _additionalAmmo4 select 0]; };
if (!isNil "_additionalAmmo5") then { _unit addMagazines [_additionalAmmo5 select 1, _additionalAmmo5 select 0]; };
_itemsPrimaryweapon pushback _silencer;
{_unit addPrimaryWeaponItem _x} forEach _itemsPrimaryweapon;
if (_primaryWeapon != "") then {
	_muzzles = getArray (configFile / "CfgWeapons" / _primaryWeapon / "muzzles");
	_muzzle = if (_muzzles select 0 == "this") then {primaryWeapon _unit} else {_muzzles select 0;};
	_unit selectWeapon _muzzle;
};

//items:
{_unit linkitem _x} forEach _itemslink;
{_unit addItemToUniform _x} forEach _itemsUniform;
{_unit addItemToVest _x} forEach _itemsVest;
{_unit addItemToBackpack _x} forEach _itemsBackpack;
{_unit addItem _x} forEach _items;
[_unit,_insignium] call BIS_fnc_setUnitInsignia;
//TFAR-specials:
if ((isClass (configFile >> "CfgPatches" >> "task_force_radio")) && _tfar_microdagr >= 1) then {
	_unit addItem "tf_microdagr";
};
//cTab-specials:
if (isClass (configFile >> "CfgPatches" >> "cTab")) then {
	if ("B_UavTerminal" in _itemsLink || "O_UavTerminal" in _itemsLink || "I_UavTerminal" in _itemsLink) then {
		if ("ItemGPS" in _items) then {_unit removeItems "ItemGPS";};
		if (_microDagr) then {_unit addItem "ItemMicroDAGR";};
		if (_androidDevice) then {_unit addItem "ItemAndroid";};
		if (_tablet) then {_unit addItem "ItemcTab";};
	} else {
		if (_microDAGR) then {
			if (!_tablet || !_androidDevice) then {_unit linkItem "ItemMicroDAGR";};
			if (_tablet || _androidDevice) then {_unit addItem "ItemMicroDAGR";};
		};
		if (_androidDevice) then {
			if (!_tablet) then {_unit linkItem "ItemAndroid";};
			if (_tablet) then {	_unit addItem "ItemAndroid";};
		};
		if (_tablet) then {_unit linkItem "ItemcTab";};
	};
	if (_helmetCam) then {_unit addItem "ItemcTabHCam"};
};
//ACE-Items:
if (isClass(configFile >> "CfgPatches" >> "ACE_common")) then {
	if (isClass(configFile >> "CfgPatches" >> "ACE_hearing")) then {
		for "_i" from 1 to _ACE_EarPlugs do {_unit addItem "ACE_EarPlugs";};
	};
	if (isClass(configFile >> "CfgPatches" >> "ACE_medical")) then {
		if (_mediKit >= 1 || _FirstAidKits > 5) then {
			_mediBack = unitBackpack _unit;
			_mediBack addItemCargoGlobal ["ACE_atropine", _ACE_atropine];
			_mediBack addItemCargoGlobal ["ACE_fieldDressing", _ACE_fieldDressing];
			_mediBack addItemCargoGlobal ["ACE_elasticBandage", _ACE_elasticBandage];
			_mediBack addItemCargoGlobal ["ACE_quikclot", _ACE_quikclot];
			_mediBack addItemCargoGlobal ["ACE_bloodIV", _ACE_bloodIV];
			_mediBack addItemCargoGlobal ["ACE_bloodIV_500", _ACE_bloodIV_500];
			_mediBack addItemCargoGlobal ["ACE_bloodIV_250", _ACE_bloodIV_250];
			_mediBack addItemCargoGlobal ["ACE_bodyBag", _ACE_bodyBag];
			_mediBack addItemCargoGlobal ["ACE_epinephrine", _ACE_epinephrine];
			_mediBack addItemCargoGlobal ["ACE_morphine", _ACE_morphine];
			_mediBack addItemCargoGlobal ["ACE_packingBandage", _ACE_packingBandage];
			_mediBack addItemCargoGlobal ["ACE_personalAidKit", _ACE_personalAidKit];
			_mediBack addItemCargoGlobal ["ACE_plasmaIV", _ACE_plasmaIV];
			_mediBack addItemCargoGlobal ["ACE_plasmaIV_500", _ACE_plasmaIV_500];
			_mediBack addItemCargoGlobal ["ACE_plasmaIV_250", _ACE_plasmaIV_250];
			_mediBack addItemCargoGlobal ["ACE_salineIV", _ACE_salineIV];
			_mediBack addItemCargoGlobal ["ACE_salineIV_500", _ACE_salineIV_500];
			_mediBack addItemCargoGlobal ["ACE_salineIV_250", _ACE_salineIV_250];
			_mediBack addItemCargoGlobal ["ACE_surgicalKit", _ACE_surgicalKit];
			_mediBack addItemCargoGlobal ["ACE_tourniquet", _ACE_tourniquet];
		} else {
			for "_i" from 1 to _ACE_atropine do {_unit addItem "ACE_atropine";};
			for "_i" from 1 to _ACE_fieldDressing do {_unit addItem "ACE_fieldDressing";};
			for "_i" from 1 to _ACE_elasticBandage do	{_unit addItem "ACE_elasticBandage";};
			for "_i" from 1 to _ACE_quikclot do {_unit addItem "ACE_quikclot";};
			for "_i" from 1 to _ACE_bloodIV do {_unit addItem "ACE_bloodIV";};
			for "_i" from 1 to _ACE_bloodIV_500 do {_unit addItem "ACE_bloodIV_500";};
			for "_i" from 1 to _ACE_bloodIV_250 do {_unit addItem "ACE_bloodIV_250";};
			for "_i" from 1 to _ACE_bodyBag do {_unit addItem "ACE_bodyBag";};
			for "_i" from 1 to _ACE_epinephrine do {_unit addItem "ACE_epinephrine";};
			for "_i" from 1 to _ACE_morphine do {_unit addItem "ACE_morphine";};
			for "_i" from 1 to _ACE_packingBandage do {_unit addItem "ACE_packingBandage";};
			for "_i" from 1 to _ACE_personalAidKit do {_unit addItem "ACE_personalAidKit";};
			for "_i" from 1 to _ACE_plasmaIV do {_unit addItem "ACE_plasmaIV";};
			for "_i" from 1 to _ACE_plasmaIV_500 do {_unit addItem "ACE_plasmaIV_500";};
			for "_i" from 1 to _ACE_plasmaIV_250 do {_unit addItem "ACE_plasmaIV_250";};
			for "_i" from 1 to _ACE_salineIV do {_unit addItem "ACE_salineIV";};
			for "_i" from 1 to _ACE_salineIV_500 do {_unit addItem "ACE_salineIV_500";};
			for "_i" from 1 to _ACE_salineIV_250 do {_unit addItem "ACE_salineIV_250";};
			for "_i" from 1 to _ACE_surgicalKit do {_unit addItem "ACE_surgicalKit";};
			for "_i" from 1 to _ACE_tourniquet do {_unit addItem "ACE_tourniquet";};
		};
	};
	if (isClass(configFile >> "CfgPatches" >> "ACE_overheating")) then {
		for "_i" from 1 to _ACE_SpareBarrel do {_unit addItem "ACE_SpareBarrel";};
	};
	if (isClass(configFile >> "CfgPatches" >> "ACE_logistics_uavbattery")) then {
		for "_i" from 1 to _ACE_UAVBattery do {_unit addItem "ACE_UAVBattery";};
	};
	if (isClass(configFile >> "CfgPatches" >> "ACE_logistics_wirecutter")) then {
		for "_i" from 1 to _ACE_wirecutter do {_unit addItem "ACE_wirecutter";};
	};
	if (isClass(configFile >> "CfgPatches" >> "ACE_RangeCard")) then {
		for "_i" from 1 to _ACE_Rangecard do {_unit addItem "ACE_RangeCard";};
	};
	if (isClass(configFile >> "CfgPatches" >> "ACE_explosives")) then {
		for "_i" from 1 to _ACE_Clacker do {_unit addItem "ACE_Clacker";};
		for "_i" from 1 to _ACE_M26_Clacker do {_unit addItem "ACE_M26_Clacker";};
		for "_i" from 1 to _ACE_DeadManSwitch do {_unit addItem "ACE_DeadManSwitch";};
		for "_i" from 1 to _ACE_DefusalKit do {_unit addItem "ACE_DefusalKit";};
		for "_i" from 1 to _ACE_Cellphone do {_unit addItem "ACE_Cellphone";};
	};
	if (isClass(configFile >> "CfgPatches" >> "ACE_maptools")) then {
		for "_i" from 1 to _ACE_MapTools do {_unit addItem "ACE_MapTools";};
	};
	if (isClass(configFile >> "CfgPatches" >> "ACE_captives")) then {
		for "_i" from 1 to _ACE_CableTie do {_unit addItem "ACE_CableTie";};
	};
	if (isClass(configFile >> "CfgPatches" >> "ACE_kestrel4500")) then {
		if (_ACE_Kestrel >= 1) then {_unit addItem "ACE_Kestrel4500";};
	};
	if (isClass(configFile >> "CfgPatches" >> "ACE_ATragMX")) then {
		if (_ACE_ATragMX >= 1) then {_unit addItem "ACE_ATragMX";};
	};
	if (isClass(configFile >> "CfgPatches" >> "ace_flashlights")) then {
		for "_i" from 1 to _ACE_Flashlight_XL50 do {_unit addItem "ACE_Flashlight_XL50";};
	};
	if (isClass(configFile >> "CfgPatches" >> "ACE_microdagr")) then {
		if ((isClass (configFile >> "CfgPatches" >> "cTab")) && _ACE_microDAGR >= 1) then {if (_microDagr) then {_unit unlinkItem "ItemMicroDAGR";_unit removeItems "ItemMicroDAGR";};_unit addItem "ACE_microDAGR";};
	};
	if (isClass(configFile >> "CfgPatches" >> "ACE_mk6mortar")) then {
		if (_ACE_RangeTable_82mm >= 1) then {_unit addItem "ACE_RangeTable_82mm";};
	};
	if ((isClass(configFile >> "CfgPatches" >> "ACE_Vector")) && _ACE_Vector >= 1) then {
		[_unit,"ACE_Vector",1] call BIS_fnc_addWeapon;
	};
	if ((isClass(configFile >> "CfgPatches" >> "ACE_Parachute")) && _ACE_Altimeter >= 1) then {
		_unit linkItem "ACE_Altimeter";
	};
	if (isClass(configFile >> "CfgPatches" >> "ACE_Grenades")) then {
		_unit addMagazines ["ACE_HandFlare_Green", _ACE_HandFlare_Green];
		_unit addMagazines ["ACE_HandFlare_Red", _ACE_HandFlare_Red];
		_unit addMagazines ["ACE_HandFlare_White", _ACE_HandFlare_White];
		_unit addMagazines ["ACE_HandFlare_Yellow", _ACE_HandFlare_Yellow];
		_unit addMagazines ["ACE_M84", _ACE_M84];
	};
	if (isClass(configFile >> "CfgPatches" >> "ACE_vehiclelock")) then {
		_ACE_key_type = switch (_ACE_key) do {
			case 2: {"ACE_key_master"};
			case 3: {"ACE_key_lockpick"};
			default {""};
		};
		if (_ACE_key == 1) then {
			_ACE_key_type = switch (side (group _unit)) do {
				case west: {"ACE_key_west"};
				case east: {"ACE_key_east"};
				case independent: {"ACE_key_indp"};
				case civilian: {"ACE_key_civ"};
			};
		};
		_unit addItem _ACE_key_type;
	};
	if (isClass (configFile >> "CfgPatches" >> "ACE_attach")) then {
		for "_i" from 1 to _IRgrenade do {_unit addItem "ACE_IR_Strobe_Item";};
	};
	//ACE variables:
	_unit setVariable ["ACE_medical_medicClass", _ACE_isMedic, true];
	_unit setVariable ["ACE_isEngineer", _ACE_isEngineer];
	_unit setVariable ["ACE_isEOD", _ACE_isEOD];
	if (_ACE_isPilot) then {
		_unit setVariable ["ACE_GForceCoef", 0.3];
	} else {
		_unit setVariable ["ACE_GForceCoef", 0.7];
	};
};

_unit setVariable ["ADV_hasLoadout",true];
	
if(true)exitWith{};