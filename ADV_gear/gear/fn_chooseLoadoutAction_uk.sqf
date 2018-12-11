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
		_x addAction [("<t color=""#00FF00"">" + ("UK Loadout wählen") + "</t>"),{ADV_loadoutActionToAddBasic = false; ADV_loadoutActionToAdd = true; (_this select 0) removeAction (_this select 2);},nil,3,false,true,"","player distance cursortarget <5"];
		
		waitUntil {ADV_loadoutActionToAdd};
		_x addAction [("<t color=""#00FF00"">" + ("UK Besatzung") + "</t>"),{["ADV_fnc_uk_crew",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];
		_x addAction [("<t color=""#00FF00"">" + ("UK Engineer") + "</t>"),{["ADV_fnc_uk_eng",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];
		_x addAction [("<t color=""#00FF00"">" + ("UK Grenadier") + "</t>"),{["ADV_fnc_uk_gren",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];
		_x addAction [("<t color=""#00FF00"">" + ("UK GrpFhr") + "</t>"),{["ADV_fnc_uk_grpfhr",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];
		_x addAction [("<t color=""#00FF00"">" + ("UK Helikopter Pilot") + "</t>"),{["ADV_fnc_uk_helipilot",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];	
		_x addAction [("<t color=""#00FF00"">" + ("UK JTAC") + "</t>"),{["ADV_fnc_uk_jtac",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];
		_x addAction [("<t color=""#00FF00"">" + ("UK Schtz (Javelin)") + "</t>"),{["ADV_fnc_uk_jav",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];
		_x addAction [("<t color=""#00FF00"">" + ("UK Schtz (M136)") + "</t>"),{["ADV_fnc_uk_m136",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];
		_x addAction [("<t color=""#00FF00"">" + ("UK Marksman") + "</t>"),{["ADV_fnc_uk_marksm",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];
		_x addAction [("<t color=""#00FF00"">" + ("UK MG (M240)") + "</t>"),{["ADV_fnc_uk_m240",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];
		_x addAction [("<t color=""#00FF00"">" + ("UK MG (M249)") + "</t>"),{["ADV_fnc_uk_m249",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];
		_x addAction [("<t color=""#00FF00"">" + ("UK Offizier") + "</t>"),{["ADV_fnc_uk_off",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];	
		_x addAction [("<t color=""#00FF00"">" + ("UK Radio Operator") + "</t>"),{["ADV_fnc_uk_rop",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];	
		_x addAction [("<t color=""#00FF00"">" + ("UK Sanitäter") + "</t>"),{["ADV_fnc_uk_sani",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];	
		_x addAction [("<t color=""#00FF00"">" + ("UK Sapper/EOD") + "</t>"),{["ADV_fnc_uk_eod",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];	
		_x addAction [("<t color=""#00FF00"">" + ("UK Schütze") + "</t>"),{["ADV_fnc_uk_schtz",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];	
		_x addAction [("<t color=""#00FF00"">" + ("UK Schütze Munition (M240)") + "</t>"),{["ADV_fnc_uk_munm240",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];	
		_x addAction [("<t color=""#00FF00"">" + ("UK Schütze Munition (M249)") + "</t>"),{["ADV_fnc_uk_munm249",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];
		_x addAction [("<t color=""#00FF00"">" + ("UK ZgFhr") + "</t>"),{["ADV_fnc_uk_zgfhr",(_this select 1),(_this select 0)] call ADV_fnc_chooseLoadout;},nil,3,false,true,"","player distance cursortarget <5"];	
		_x addAction [("<t color=""#FFFFFF"">" + ("Zurück") + "</t>"),{removeAllActions (_this select 0); ADV_loadoutActionToAddBasic = true; ADV_loadoutActionToAdd = false;},nil,3,false,true,"","player distance cursortarget <5"];

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