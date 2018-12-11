//////////////////////////////////////////////////////////////////
// 
//LOADOUT ussf
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
"EOD",
"Grenadier",
"GrpFhr",
"Marksman (M110)",
"MG-Schütze", //5
"Sanitäter",
"Schütze",
"Schütze (M136)",
"Spotter",
"Scharfschütze (XM2010)",
"Zugführer"
];

_pfad = "ADV_gear\loadouts\ussf\";

lbSetData [7377, 0, format["%1fn_ussf_eod.sqf",_pfad]];
lbSetData [7377, 1, format["%1fn_ussf_gren.sqf",_pfad]];
lbSetData [7377, 2, format["%1fn_ussf_grpfhr.sqf",_pfad]];
lbSetData [7377, 3, format["%1fn_ussf_m110.sqf",_pfad]];
lbSetData [7377, 4, format["%1fn_ussf_mg.sqf",_pfad]];
lbSetData [7377, 5, format["%1fn_ussf_sani.sqf",_pfad]];
lbSetData [7377, 6, format["%1fn_ussf_schtz.sqf",_pfad]];
lbSetData [7377, 7, format["%1fn_ussf_m136.sqf",_pfad]];
lbSetData [7377, 8, format["%1fn_ussf_spotter.sqf",_pfad]];
lbSetData [7377, 9, format["%1fn_ussf_xm2010.sqf",_pfad]];
lbSetData [7377, 10, format["%1fn_ussf_zgfhr.sqf",_pfad]];
