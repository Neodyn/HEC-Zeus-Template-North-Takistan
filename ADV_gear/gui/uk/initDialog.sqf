//////////////////////////////////////////////////////////////////
// 
//LOADOUT uk
//MADE BY Raspu
// 
//////////////////////////////////////////////////////////////////

disableSerialization;

//dialog
_display = _this select 0;
_listBox = _display displayCtrl 7377;
_comboBox = _display displayCtrl 7977;

// LBs leeren
lbClear _listBox;
lbClear _comboBox;

//Mögliche Tarnmuster -> Combobox

// {
	// _comboBox lbAdd _x;
// } foreach [
// "Flecktarn", // 0
// "Tropentarn" // 1
// "Tropentarn Tarnung", // 2
// "Flecktarn Tarnung" // 3
// ];

// Auswahl standardmäßig auf flecktarn neu setzen
// _comboBox lbSetCurSel 1;

// tropentarn, flecktarn, tropennew, flecknew
// _comboBox lbSetData [0, "[true,false]"];
// _comboBox lbSetData [1, "[false,true]"];
// _comboBox lbSetData [2, "[false,false,true,false]"];
// _comboBox lbSetData [3, "[false,false,false,true]"];

// Mögliche loadouts -> Listbox
{
	lbAdd [7377, _x]
} foreach [
"Besatzung", //0
"Engineer",
"EOD",
"Grenadier",
"Gruppenführer",
"Helikopter-Pilot",
"JTAC",
"MG (M240)",
"MG (M249)",
"MG (L86A2 LSW)",
"MG Hilfsschütze (M240)",
"MG Hilfsschütze (M249)",
"Marksman",
"Offizier",
"Pointman",
"Radio Operator",
"Sanitäter",
"Scharfschütze",
"Schütze",
"Schütze (Javelin)",
"Schütze (M136)",
"Schütze (RGW90)",
"Zugführer"
];

_pfad = "ADV_gear\loadouts\uk\";

lbSetData [7377, 0, format["%1fn_uk_crew.sqf",_pfad]];
lbSetData [7377, 1, format["%1fn_uk_eng.sqf",_pfad]];
lbSetData [7377, 2, format["%1fn_uk_eod.sqf",_pfad]];
lbSetData [7377, 3, format["%1fn_uk_gren.sqf",_pfad]];
lbSetData [7377, 4, format["%1fn_uk_grpfhr.sqf",_pfad]];
lbSetData [7377, 5, format["%1fn_uk_helipilot.sqf",_pfad]];
lbSetData [7377, 6, format["%1fn_uk_jtac.sqf",_pfad]];
lbSetData [7377, 7, format["%1fn_uk_m240.sqf",_pfad]];
lbSetData [7377, 8, format["%1fn_uk_m249.sqf",_pfad]];
lbSetData [7377, 9, format["%1fn_uk_l86a2lsw.sqf",_pfad]];
lbSetData [7377, 10, format["%1fn_uk_munm240.sqf",_pfad]];
lbSetData [7377, 11, format["%1fn_uk_munm249.sqf",_pfad]];
lbSetData [7377, 12, format["%1fn_uk_marksm.sqf",_pfad]];
lbSetData [7377, 13, format["%1fn_uk_off.sqf",_pfad]];
lbSetData [7377, 14, format["%1fn_uk_pointm.sqf",_pfad]];
lbSetData [7377, 15, format["%1fn_uk_rop.sqf",_pfad]];
lbSetData [7377, 16, format["%1fn_uk_sani.sqf",_pfad]];
lbSetData [7377, 17, format["%1fn_uk_scharfschtz.sqf",_pfad]];
lbSetData [7377, 18, format["%1fn_uk_schtz.sqf",_pfad]];
lbSetData [7377, 19, format["%1fn_uk_jav.sqf",_pfad]];
lbSetData [7377, 20, format["%1fn_uk_m136.sqf",_pfad]];
lbSetData [7377, 21, format["%1fn_uk_schtz_rgw90.sqf",_pfad]];
lbSetData [7377, 22, format["%1fn_uk_zgfhr.sqf",_pfad]];
