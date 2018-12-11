/*

Actions for choosing loadouts

*/
ADV_loadoutActionToAdd = false;
ADV_loadoutActionToAddBasic = true;
ADV_loadoutActionToAddAdmin = true;
{
	while {true} do {
		waitUntil {ADV_loadoutActionToAddAdmin};
		waitUntil {ADV_loadoutActionToAddBasic};
		sleep 0.5;
		_x addAction [("<t color=""#00FF00"">" + ("Loadouts auswählen") + "</t>"),{ADV_loadoutActionToAddBasic = false; ADV_loadoutActionToAdd = true; (_this select 0) removeAction (_this select 2);},nil,3,false,true,"","player distance cursortarget <5"];
		_uk addAction [("<t color=""#00FF00"">" + ("Loadouts auswählen") + "</t>"),{ADV_loadoutActionToAddBasic = false; ADV_loadoutActionToAdd = true; (_this select 0) removeAction (_this select 2);},nil,3,false,true,"","player distance cursortarget <5"];
		
		waitUntil {ADV_loadoutActionToAdd};
		_x addAction [("<t color=""#00FF00"">" + ("Zugführer") + "</t>"),{["ADV_fnc_command",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];
		_x addAction [("<t color=""#00FF00"">" + ("Gruppenführer") + "</t>"),{["ADV_fnc_leader",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];
		_x addAction [("<t color=""#00FF00"">" + ("Truppführer") + "</t>"),{["ADV_fnc_ftLeader",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];	
		_x addAction [("<t color=""#00FF00"">" + ("LMG-Schütze") + "</t>"),{["ADV_fnc_lmg",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];
		_x addAction [("<t color=""#00FF00"">" + ("MG-Schütze") + "</t>"),{["ADV_fnc_AR",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];
		_x addAction [("<t color=""#00FF00"">" + ("asst. MG-Schütze") + "</t>"),{["ADV_fnc_assAR",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];
		_x addAction [("<t color=""#00FF00"">" + ("AT-Spezialist") + "</t>"),{["ADV_fnc_AT",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];
		_x addAction [("<t color=""#00FF00"">" + ("asst. AT-Spezialist") + "</t>"),{["ADV_fnc_assAT",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];
		_x addAction [("<t color=""#00FF00"">" + ("AA-Spezialist") + "</t>"),{["ADV_fnc_AA",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];
		_x addAction [("<t color=""#00FF00"">" + ("asst. AA-Spezialist") + "</t>"),{["ADV_fnc_assAA",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];
		_x addAction [("<t color=""#00FF00"">" + ("Grenadier") + "</t>"),{["ADV_fnc_gren",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];
		_x addAction [("<t color=""#00FF00"">" + ("Zielfernrohrschütze") + "</t>"),{["ADV_fnc_marksman",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];
		_x addAction [("<t color=""#00FF00"">" + ("Sanitäter") + "</t>"),{["ADV_fnc_medic",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];
		_x addAction [("<t color=""#00FF00"">" + ("Pionier") + "</t>"),{["ADV_fnc_spec",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];
		_x addAction [("<t color=""#00FF00"">" + ("UAV-Speziallist") + "</t>"),{["ADV_fnc_uavOP",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];
		_x addAction [("<t color=""#00FF00"">" + ("Einsatzersthelfer") + "</t>"),{["ADV_fnc_cls",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];
		_x addAction [("<t color=""#00FF00"">" + ("Schütze") + "</t>"),{["ADV_fnc_soldier",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];
		_x addAction [("<t color=""#00FF00"">" + ("Schütze (AT)") + "</t>"),{["ADV_fnc_soldierAT",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];
		_x addAction [("<t color=""#00FF00"">" + ("Scharfschütze") + "</t>"),{["ADV_fnc_sniper",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];
		_x addAction [("<t color=""#00FF00"">" + ("Beobachter") + "</t>"),{["ADV_fnc_spotter",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];
		_x addAction [("<t color=""#00FF00"">" + ("Fahrer") + "</t>"),{["ADV_fnc_driver",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];
		_x addAction [("<t color=""#00FF00"">" + ("Taucher") + "</t>"),{["ADV_fnc_diver",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];
		_x addAction [("<t color=""#00FF00"">" + ("Taucher (Sanitäter)") + "</t>"),{["ADV_fnc_diver_medic",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];
		_x addAction [("<t color=""#00FF00"">" + ("Taucher (Pionier)") + "</t>"),{["ADV_fnc_diver_spec",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];
		_x addAction [("<t color=""#00FF00"">" + ("Pilot") + "</t>"),{["ADV_fnc_pilot",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];
		_x addAction [("<t color=""#FFFFFF"">" + ("Zurück") + "</t>"),{removeAllActions (_this select 0); ADV_loadoutActionToAddBasic = true; ADV_loadoutActionToAdd = false;},nil,3,false,true,"","player distance cursortarget <5"];
		_uk addAction [("<t color=""#00FF00"">" + ("Pilot") + "</t>"),{["ADV_fnc_pilot",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];

		[_x] spawn {
			_target = _this select 0;
			if (servercommandavailable "#kick") then {
				ADV_loadout_dispenser = _target;
				_target addAction [("<t color=""#FFFFFF"">" + ("Loadout-Auswahl deaktivieren") + "</t>"),{
					[{removeAllActions ADV_loadout_dispenser;},"BIS_fnc_call",true] call BIS_fnc_MP;
					ADV_loadoutActionToAddAdmin = false;publicVariable "ADV_loadoutActionToAddAdmin";
					[] spawn {
						sleep 1;
						ADV_loadout_dispenser addAction [("<t color=""#FFFFFF"">" + ("Loadout-Auswahl reaktivieren") + "</t>"),{
							ADV_loadoutActionToAddAdmin = true;publicVariable "ADV_loadoutActionToAddAdmin";
							ADV_loadoutActionToAddBasic = true;publicVariable "ADV_loadoutActionToAddBasic";
							(_this select 0) removeAction (_this select 2);
						},nil,3,false,true,"","player distance cursortarget <5"];
					};
				},nil,3,false,true,"","player distance cursortarget <5"];
				sleep 0.5;
			};
		};
		ADV_loadoutActionToAdd = false;
		sleep 0.5;
	};
} forEach _this;

if (true) ExitWith {};