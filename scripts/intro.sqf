if(isDedicated) exitWith{};

if (hasInterface) then {

    ["Insurgency | ALiVE - Running Client Intro..."] call ALiVE_fnc_Dump;

    //Intro
    [] spawn {

		//playMusic "ALiVE_Intro";
		playMusic "Track10_StageB_action";
		waitUntil {!isNull player};

	    titleText ["Created by Neodym ||HEC||", "BLACK IN",9999];
		0 fadesound 0;

		private ["_cam","_camx","_camy","_camz","_object","_name"];
		_start = time;

		sleep 10;

		_object = player;
		_name = name player;
		_camx = getposATL _object select 0;
		_camy = getposATL _object select 1;
		_camz = getposATL _object select 2;

		_cam = "camera" CamCreate [_camx -500 ,_camy + 500,_camz+450];

		_cam CamSetTarget _object;
		_cam CameraEffect ["Internal","Back"];
		_cam CamCommit 0;

		_cam camsetpos [_camx -0 ,_camy + 0,_camz+3];

		titleText ["N A T O F O R  ACE3 by ||HEC||", "BLACK IN",10];
		10 fadesound 0.9;
		_cam CamCommit 20;
		sleep 5;
		sleep 15;

		_cam CameraEffect ["Terminate","Back"];
		CamDestroy _cam;
		10 fadeMusic 0;

		sleep 1;
		
    };

    waituntil {!isnull player};

};