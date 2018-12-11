	class TimeofDayHour {
		//-- param 0
		title = "Mission Hours";
		values[] = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24};
		texts[] = {"1:00","2:00","3:00","4:00","5:00","6:00","7:00","8:00","9:00","10:00","11:00","12:00","13:00","14:00","15:00","16:00","17:00","18:00","19:00","20:00","21:00","22:00","23:00","24:00"};
		default = 9;
	};
	class TimeofDayMinute {
		//-- param 1
		title = "Mission Minutes";
		values[] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59};
		texts[] = {"0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59"};
		default = 0;
	};
	class TimeofDayMonth {
		//-- param 2
		title = "Mission Month";
		values[] = {1,2,3,4,5,6,7,8,9,10,11,12};
		texts[] = {"January","February","March","April","May","June","July","August","September","October","November","December"};
		default = 1;
	};
	class TimeofDay {
		//-- param 3
		title = "Mission Day";
		values[] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31};
		texts[] = {"1","2","3","4","5","6","7","8","9","10","11","12",
			"13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31"};
		default = 1;
	};
		
	class dummy_settings_ace {
	title = "---------------------- Loadout Settings ----------------------";
	values[] = {-99999};
	default = -99999;
	texts[] = {""};
	};
	
	
	class param_customWeap
	{
	title="Welche Waffen-Sets sollen an Einheiten ausgegeben werden? (Kann durch worldname beeinflusst werden.)";
	values[] = {9,8,7,6,5,4,3,2,1,20,0};
	texts[] = {"FAL, G3 und M60 - größtenteils ohne Optiken, keine Schalldämpfer (benötigt HLC_FAL, HLC_G3, HLC_MP5, HLC_M60)","BAF (benötigt UK3CB-Equipment und -Weapons)","CUP BAF (benötigt CUP)","CUP Arma 2 (benötigt CUP)","CUP Operation Arrowhead (benötigt CUP)","RHS SOF (benötigt RHSUSF)","RHS Marines (benötigt RHSUSF, optional HLC_MP5, HLC_M60)","RHS Army (benötigt RHSUSF, optional HLC_MP5)","BWmod (benötigt BWmod, optional HLC_G36)","Apex NATO","Vanilla NATO"};
	default = 3;
	};
	
	class param_remRespWest
	{
	title="Soll der Respawn-Marker am Start nach 60 secs entfernt werden?";
	values[] = {1,0};
	texts[] = {"Ja","Nein"};
	default = 0;
	};
	
	class param_moveMarker
	{
	title="Wie soll mit respawnenden oder nachzuführenden Spielern umgegangen werden?";
	values[] = {99,3,2,1,0};
	texts[] = {"Kein Respawn","Beweglicher Respawn (wird alle 120 sek. nachgezogen)","Fester Respawn (Nachführung durch Teleport, oder Fallschirmabwurf. Gruppenführern steht Fallschirmabwurf für gesamte Gruppe zur Verfügung)","Fester Respawn (Nachführung durch Teleport)","Fester Respawn"};
	default = 2;
	};