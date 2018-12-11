/*
unit loadout script by Belbo
creates a specific loadout for playable units. Add the items to their respective variables. (expected data type is given).
The kind of ammo a player gets with this loadout does not necessarily have to be specified. If tracer ammo is supposed to be used, you should set _primaryweaponAmmo to 0 and add those
magazines one for one in _items.
*/

//clothing - (string)
_uniform = ["rhs_uniform_cu_ocp"];
_vest = ["rhsusf_iotv_ocp_SAW"];
_headgear = ["rhsusf_ach_bare_tan_headset_ess"];
_backpack = ["rhsusf_assault_eagleaiii_coy","rhsusf_assault_eagleaiii_ocp"];
_insignium = "";
_useProfileGoggles = 0;		//If set to 1, goggles from your profile will be used. If set to 0, _goggles will be added (or profile goggles will be removed when _goggles is left empty).
_goggles = ["rhs_googles_black","rhs_googles_clear","rhs_googles_yellow","rhs_googles_orange",""];

//weapons - primary weapon - (string)
_primaryweapon = "rhs_weap_m249_pip_S";

//primary weapon items - (array)
_itemsPrimaryweapon = ["rhsusf_acc_ELCAN"];
_silencer = "";		//if silencer is added

//primary weapon ammo (if a primary weapon is given) and how many tracer mags - (integer)
_primaryweaponAmmo = [7,"rhsusf_100Rnd_556x45_soft_pouch"];		//first number: Amount of magazines, second number: config index of magazine or classname of magazine type.
//_additionalAmmo = [0,0]; //additional ammo classes up to 3: _additionalAmmo2 /_additionalAmmo3

//40mm Grenades - (integer)
_40mmHeGrenadesAmmo = 0;	
_40mmSmokeGrenadesWhite = 0;
_40mmSmokeGrenadesYellow = 0;
_40mmSmokeGrenadesOrange = 0;
_40mmSmokeGrenadesRed = 0;
_40mmSmokeGrenadesPurple = 0;
_40mmSmokeGrenadesBlue = 0;
_40mmSmokeGrenadesGreen = 0;
_40mmFlareWhite = 0;
_40mmFlareYellow = 0;
_40mmFlareRed = 0;
_40mmFlareGreen = 0;
_40mmFlareIR = 0;
_M433HEPD = 0;
_M441HE = 0;
_M4009Stun = 0;
_M576Buckshot = 0;
_DM25White = 0;
_DM25Orange = 0;
_DM25Yellow = 0;
_DM51A1 = 0;
//weapons - handgun - (string)
_handgun = "";

//handgun items - (array)
_itemsHandgun = [""];
_handgunSilencer = "";		//if silencer is added

//handgun ammo (if a handgun is given) - (integer)
_handgunAmmo = [0,0];		//first number: Amount of magazines, second number: config index of magazine or classname of magazine type.

//weapons - launcher - (string)
_launcher = "";

//launcher ammo (if a launcher is given) - (integer) 
_launcherAmmo = [0,0];		//first number: Amount of magazines, second number: config index of magazine or classname of magazine type.

//binocular - (string)
_binocular = "";

//throwables - (integer)
_grenadeHE = 0;
_grenadeSmokeWhite = 0;
_grenadeSmokeYellow = 0;
_grenadeSmokeOrange = 0;
_grenadeSmokeRed = 0;
_grenadeSmokePurple = 0;
_grenadeSmokeBlue = 0;
_grenadeSmokeGreen = 0;
_chemlightYellow = 0;
_chemlightRed = 0;
_chemlightGreen = 0;
_chemlightBlue = 0;
_IRgrenade = 0;
_M14TH3 = 0;
_M8HCWhite = 2;
_M8HCGreen = 0;
_M8HCPurple = 0;
_M8HCRed = 0;
_M8HCYellow = 0;
_M67Frag = 2;
_M7A3CS = 0;
_MK84Stun = 0;
_MK3A2Conc = 0;

//first aid kits and medi kits- (integer)
_FirstAidKits = 0;
_MediKit = 0;		//if set to 1, a MediKit and all FirstAidKits will be added to the backpack; if set to 0, FirstAidKits will be added to inventory in no specific order.

//items added specifically to uniform: - (array)
_itemsUniform = [];

//items added specifically to vest: - (array)
_itemsVest = [];

//items added specifically to Backpack: - (array)
_itemsBackpack = ["rhsusf_ANPVS_14"];

//linked items (don't put "ItemRadio" in here, as it's set with _equipRadio) - (array)
_itemsLink = [
		"ItemWatch",
		"ItemCompass",
		"ItemMap"
		];
		
//items added to any container - (array)
_items = [""];

//MarksmenDLC-objects:
if (304400 in (getDLCs 1) || 332350 in (getDLCs 1)) then {
};

if (missionNamespace getVariable ["ADV_par_isTvT",false]) then {
	_itemsPrimaryweapon = ["optic_holosight","acc_flashlight"];
};

//CustomMod items//
	
//ACRE radios
_ACREradios = ["ACRE_PRC343"];	//_this select 0=shortrange radio;_this select 1=leader radio;_this select 2=backpackRadio;
//TFAR items
_givePersonalRadio = true;
_tfar_microdagr = 0;				//adds the tfar microdagr to set the channels for a rifleman radio

//ACE items (if ACE is running on the server) - (integers)
_ACE_EarPlugs = 1;

_ACE_atropine = 0;
_ACE_fieldDressing = 4;
_ACE_elasticBandage = 2;
_ACE_quikclot = 2;
_ACE_bloodIV = 0;
_ACE_bloodIV_500 = 0;
_ACE_bloodIV_250 = 0;
_ACE_bodyBag = 0;
_ACE_epinephrine = 0;
_ACE_morphine = 2;
_ACE_packingBandage = 1;
_ACE_personalAidKit = 0;
_ACE_plasmaIV = 0;
_ACE_plasmaIV_500 = 0;
_ACE_plasmaIV_250 = 0;
_ACE_salineIV = 0;
_ACE_salineIV_500 = 0;
_ACE_salineIV_250 = 0;
_ACE_surgicalKit = 0;
_ACE_tourniquet = 1;

_ACE_SpareBarrel = 1;
_ACE_UAVBattery = 0;
_ACE_wirecutter = 0;
_ACE_Clacker = 0;
_ACE_M26_Clacker = 0;
_ACE_DeadManSwitch = 0;
_ACE_DefusalKit = 0;
_ACE_Cellphone = 0;
_ACE_MapTools = 0;
_ACE_CableTie = 2;

_ACE_key = 0;	//0 = no key, 1 = side dependant key, 2 = master key, 3 = lockpick
_ACE_kestrel = 0;
_ACE_altimeter = 0;
_ACE_ATragMX = 0;
_ACE_microDAGR = 0;
_ACE_Flashlight_XL50 = 1;
_ACE_RangeTable_82mm = 0;
_ACE_Rangecard = 0;
_ACE_Vector = 0;
_ACE_m84 = 0;
_ACE_HandFlare_Green = 0;
_ACE_HandFlare_Red = 1;
_ACE_HandFlare_White = 0;
_ACE_HandFlare_Yellow = 0;

//AGM Variables (if AGM is running) - (bool)
_ACE_isMedic = 0;	//0 = no medic; 1 = medic; 2 = doctor;
_ACE_isEngineer = false;
_ACE_isEOD = false;
_ACE_isPilot = false;

//Tablet-Items
_tablet = false;
_androidDevice = false;
_microDAGR = false;
_helmetCam = false;

if (isClass (configFile >> "CfgPatches" >> "task_force_radio")) then {
	//_backpack = ["tf_rt1523g_big_rhs"];
};

///// No editing necessary below this line /////

_player = _this select 0;
[_player] call ADV_fnc_gear;

if (true) exitWith {};