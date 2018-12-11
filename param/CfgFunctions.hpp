class ADV_param
{	
	tag = "ADV";
	class preInit
	{
		file = "param\preInit";
		class acreSettings {};
		//class tfarSettings { preInit = 1; };
		class parVariables {
			preInit = 1;
		};
		class Variables {
			preInit = 1;
		};
		class preInit {
			preInit = 1;
		};
		class collectFlags {};
	};
	class client
	{
		file = "functions\client";
		class teleport {};
		class timedHint {};
		class flag {};
		class paraJump {};
		class paraJumpSelection {};
		class playerUnit {};
		class safeZone {};
	};
	
	class client_internal
	{
		file = "functions\client\internal";
		class adminCommands {};
		class dialogTeleport {};
		class execTeleport {};
		class moveRespMarker {};
		class privateDebug {};
	};
	
	class gear_internal
	{
		file = "functions\gear\internal";
		class aceGear {};
		class aceMedicalItems {};
		class loadoutVariables {};
	};
	
	class server_internal
	{
		file = "functions\server\internal";
		class zeusEVH {};
	};
	class server
	{
			file = "functions\server";
			class zeusObjects {};
			class createZeus {};
	};
	
};
