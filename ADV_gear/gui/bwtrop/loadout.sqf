// Ausrüstungsskript by James, 
// in Anlehnung an Maeh, Feldhobel
//hint str(_this);

_loadout = _this select 0; //String zur Datei
// _tarnfleck = call (compile (_this select 1)); // Array aus String

// fleck = _tarnfleck select 0;
// tropen = _tarnfleck select 1;
// f2 = _tarnfleck select 2;
// f3 = _tarnfleck select 3;
// tzg = _tarnfleck select 4;
// t1 = _tarnfleck select 5;
// t2 = _tarnfleck select 6;
// t3 = _tarnfleck select 7;

if (_loadout == "") exitWith {hint "kein Loadout angegeben";};

// Aufruf des ausgewählten Loadouts -> Übergabe aus Dialog
[player] execVM _loadout; 

closeDialog 1; // OK