//////////////////////////////////////////////////////////////////
// 
//LOADOUT BWTROP
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
"EOD",
"GrpFhr",
"Gruppenscharfschütze G3",
"Gruppenscharfschütze G82",
"MG4-Schütze", // 5
"MG5-Schütze",
"MG4-Hilfsschütze",
"MG5-Hilfsschütze",
"Offizier",
"Pionier",
"Schütze", //10
"Schütze PzFst",
"Schütze RGW90",
"Sanitäter",
"Arzt",
"Zugführer"
];

_pfad = "ADV_gear\loadouts\bwtrop\";

lbSetData [7377, 0, format["%1fn_bwtrop_crew.sqf",_pfad]];
lbSetData [7377, 1, format["%1fn_bwtrop_eod.sqf",_pfad]];
lbSetData [7377, 2, format["%1fn_bwtrop_grpfhr.sqf",_pfad]];
lbSetData [7377, 3, format["%1fn_bwtrop_grpschrfg3.sqf",_pfad]];
lbSetData [7377, 4, format["%1fn_bwtrop_grpschrfg28.sqf",_pfad]];
lbSetData [7377, 5, format["%1fn_bwtrop_mg4.sqf",_pfad]];
lbSetData [7377, 6, format["%1fn_bwtrop_mg5.sqf",_pfad]];
lbSetData [7377, 7, format["%1fn_bwtrop_munmg4.sqf",_pfad]];
lbSetData [7377, 8, format["%1fn_bwtrop_munmg5.sqf",_pfad]];
lbSetData [7377, 9, format["%1fn_bwtrop_off.sqf",_pfad]];
lbSetData [7377, 10, format["%1fn_bwtrop_pio.sqf",_pfad]];
lbSetData [7377, 11, format["%1fn_bwtrop_schtz.sqf",_pfad]];
lbSetData [7377, 12, format["%1fn_bwtrop_pzfst.sqf",_pfad]];
lbSetData [7377, 13, format["%1fn_bwtrop_rgw90.sqf",_pfad]];
lbSetData [7377, 14, format["%1fn_bwtrop_sani.sqf",_pfad]];
lbSetData [7377, 15, format["%1fn_bwtrop_sanimd.sqf",_pfad]];
lbSetData [7377, 16, format["%1fn_bwtrop_zgfhr.sqf",_pfad]];
