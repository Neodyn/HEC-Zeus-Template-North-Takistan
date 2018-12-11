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

		_title = "<t size='1.2' color='#e5b348' shadow='1' shadowColor='#000000'>NATOFOR </t>
		<img color='#ffffff' image='pics\img_line_ca.paa' align='left' size='0.60' /><br/>";
        _text = format["%1<t>Welcome %2. Please take the time to read the following displaying shortly after this message and enjoy your stay.</t>
		<br/><br/><img color='#ffffff' image='pics\img_line_ca.paa' align='left' size='0.60' />",_title, _name];

        ["openSideTop",1.4] call ALIVE_fnc_displayMenu;
        ["setSideTopText",_text] call ALIVE_fnc_displayMenu;

        sleep 20;
		playMusic "";

        _title = "<t size='1.2' color='#e5b348' shadow='1' shadowColor='#000000'>NATOFOR </t>
		<img color='#ffffff' image='pics\img_line_ca.paa' align='left' size='0.60' /><br/>";
        _text = format["%1<t>Join our teamspeak 3 channel (ts.hec.wtf) to meet up with other player squads.</t>
		<br/><br/><img color='#ffffff' image='pics\img_line_ca.paa' align='left' size='0.60' />",_title];

        ["openSideTop",1.4] call ALIVE_fnc_displayMenu;
        ["setSideTopText",_text] call ALIVE_fnc_displayMenu;

		
    };

    waituntil {!isnull player};

};