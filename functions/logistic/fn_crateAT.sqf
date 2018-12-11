﻿/*
 * Author: Belbo
 *
 * Fills a crate with AT ammunition for BLUFOR
 *
 * Arguments:
 * Array of objects - <ARRAY> of <OBJECTS>
 *
 * Return Value:
 * Function executed - <BOOL>
 *
 * Example:
 * [this] call adv_fnc_crateAT;
 *
 * Public: Yes
 */

//mission variables and parameters:
private [
	"_par_customWeap","_par_opfWeap","_par_indWeap","_par_customUni","_par_indUni","_par_opfUni","_par_NVGs","_par_opfNVGs","_par_optics","_par_opfOptics","_par_Silencers","_par_opfSilencers"
	,"_par_tablets","_par_radios","_par_TIEquipment","_par_ace_medical_GivePAK","_var_aridMaps","_var_saridMaps","_var_lushMaps","_var_europeMaps","_par_invinciZeus","_par_customLoad","_par_logisticAmount"
	,"_loadoutVariables"
];
if (isNil "_loadoutVariables") then {call adv_fnc_loadoutVariables;};

{
	private _target = _x;
	//makes the crates indestructible:
	_target allowDamage false;
	
	//weapons & ammo
	switch (true) do {
		//BWmod
		case (_par_customWeap == 1): {
			//weapons
			_target addWeaponCargoGlobal ["BWA3_RGW90_Loaded",2];
			_target addWeaponCargoGlobal ["BWA3_Pzf3_Loaded",3];
		};
		//SeL RHS
		case ( _par_customWeap == 2 || _par_customWeap == 3 || _par_customWeap == 4 || ( _par_customWeap == 9 && isClass(configFile >> "CfgPatches" >> "rhsusf_main") ) ): {
			//weapons
			_target addWeaponCargoGlobal ["rhs_weap_M136",2];
			//ammo
			if !(isClass(configFile >> "CfgPatches" >> "ace_disposable")) then { _target addMagazineCargoGlobal ["rhs_m136_mag",2]; };
			_target addMagazineCargoGlobal ["rhs_fgm148_magazine_AT",3];
		};
		//SeL CUP
		case (_par_customWeap == 5 || _par_customWeap == 6 || _par_customWeap == 7): {
			//weapons
			_target addWeaponCargoGlobal ["CUP_launch_M136",2];
			//ammo
			if !(isClass(configFile >> "CfgPatches" >> "ace_disposable")) then { _target addMagazineCargoGlobal ["CUP_M136_M",2]; };
			_target addMagazineCargoGlobal ["CUP_Javelin_M",3];
		};
		//UK3CB
		case (_par_customWeap == 8): {
			//weapons
			_target addWeaponCargoGlobal ["UK3CB_BAF_AT4_AP_Launcher",2];
			
			_target addMagazineCargoGlobal ["UK3CB_BAF_Javelin_Slung_Tube",3];
		};
		default {
			//weapons
			_target addWeaponCargoGlobal ["launch_NLAW_F",2];
			//ammo
			if !(isClass(configFile >> "CfgPatches" >> "ace_disposable")) then { _target addMagazineCargoGlobal ["NLAW_F",2]; };
			_target addMagazineCargoGlobal ["Titan_AT",3];
		};
	};
	//grenades
	switch (_par_customWeap) do {
		case 1: {
			_target addMagazineCargoGlobal ["BWA3_DM25",2];		
		};
		case 2: {
			_target addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
		};
		case 3: {
			_target addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
		};
		case 4: {
			_target addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
		};
		default {
			_target addMagazineCargoGlobal ["SmokeShell",2];
		};
	};

	if ( _par_NVGs == 2 && !(isClass (configFile >> "CfgPatches" >> "ACE_attach")) ) then {
		_target addMagazineCargoGlobal ["B_IR_Grenade",1];
	};

	_ACE_fieldDressing = 0;
	_ACE_packingBandage = 0;
	_ACE_elasticBandage = 0;
	_ACE_quikclot = 0;
	_ACE_atropine = 0;
	_ACE_epinephrine = 0;
	_ACE_morphine = 0;
	_ACE_tourniquet = 0;
	_ACE_bloodIV = 0;
	_ACE_bloodIV_500 = 0;
	_ACE_bloodIV_250 = 0;
	_ACE_plasmaIV = 0;
	_ACE_plasmaIV_500 = 0;
	_ACE_plasmaIV_250 = 0;
	_ACE_salineIV = 0;
	_ACE_salineIV_500 = 0;
	_ACE_salineIV_250 = 0;
	_ACE_personalAidKit = 0;
	_ACE_surgicalKit = 0;
	_ACE_bodyBag = 0;
	
	_FAKs = 0;
	_mediKit = 0;
	
	if !(isClass (configFile >> "CfgPatches" >> "ACE_Medical")) then {
		_target addItemCargoGlobal ["FirstAidKit",_FAKs];
		_target addItemCargoGlobal ["MediKit",_mediKit];
	};
	//medical stuff
	if (isClass (configFile >> "CfgPatches" >> "ACE_common")) then {
		_ACE_EarPlugs = 2;

		_ACE_SpareBarrel = 0;
		_ACE_tacticalLadder = 0;
		_ACE_UAVBattery = 0;
		_ACE_wirecutter = 0;
		_ACE_sandbag = 0;
		_ACE_Clacker = 0;
		_ACE_M26_Clacker = 0;
		_ACE_DeadManSwitch = 0;
		_ACE_DefusalKit = 0;
		_ACE_Cellphone = 0;
		_ACE_MapTools = 0;
		_ACE_CableTie = 0;
		_ACE_NonSteerableParachute = 0;

		_ACE_key_west = 0;
		_ACE_key_east = 0;
		_ACE_key_indp = 0;
		_ACE_key_civ = 0;
		_ACE_key_master = 0;
		_ACE_key_lockpick = 0;
		_ACE_kestrel = 0;
		_ACE_ATragMX = 0;
		_ACE_rangecard = 0;
		_ACE_altimeter = 0;
		_ACE_microDAGR = 0;
		_ACE_DAGR = 0;
		_ACE_RangeTable_82mm = 0;
		_ACE_rangefinder = 0;
		_ACE_NonSteerableParachute = 0;
		_ACE_IR_Strobe = 1;
		_ACE_M84 = 0;
		_ACE_HandFlare_Green = 0;
		_ACE_HandFlare_Red = 2;
		_ACE_HandFlare_White = 0;
		_ACE_HandFlare_Yellow = 0;
		[_target] call ADV_fnc_addACEItems;
	};
	nil;
} count _this;

true;