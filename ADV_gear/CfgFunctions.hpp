class ADV 
{	
	tag = "ADV";
	class gear
	{
		file = "ADV_gear\gear";
		class addMagazine {};
		class applyLoadout {};
		class chooseLoadout {};
		class chooseLoadoutAction {};
		// class chooseLoadoutAction_bwtrop {};
		// class chooseLoadoutAction_uk {};
		class gear {};
		class loadoutsInit {};
		class nil {};
		class playerUnit {};
	};
	class loadouts_bwtrop //BW Mod 3-Fleck Loadout
	{
		file = "ADV_gear\loadouts\bwtrop";
		class bwtrop_base {};
		class bwtrop_crew {};
		class bwtrop_eod {};
		class bwtrop_grpfhr {};
		class bwtrop_grpschrfg28 {};
		class bwtrop_grpschrfg3 {};
		class bwtrop_mg4 {};
		class bwtrop_mg5 {};
		class bwtrop_munmg4 {};
		class bwtrop_munmg5 {};
		class bwtrop_pzfst {};
		class bwtrop_rgw90 {};
		class bwtrop_sani {};
		class bwtrop_sanimd {};
		class bwtrop_schtz {};
		class bwtrop_off {};
		class bwtrop_zgfhr {};
	};
	class loadouts_bwfleck //BW Mod 5-Fleck Loadout
	{
		file = "ADV_gear\loadouts\bwfleck";
		class bwfleck_base {};
		class bwfleck_crew {};
		class bwfleck_eod {};
		class bwfleck_grpfhr {};
		class bwfleck_grpschrfg28 {};
		class bwfleck_grpschrfg3 {};
		class bwfleck_mg4 {};
		class bwfleck_mg5 {};
		class bwfleck_pzfst {};
		class bwfleck_rgw90 {};
		class bwfleck_sani {};
		class bwfleck_schtz {};
		class bwfleck_off {};
		class bwfleck_pio {};
		class bwfleck_zgfhr {};
	};
	class loadouts_ussf //US Special Forces
	{
		file = "ADV_gear\loadouts\ussf";
		class ussf_eod {};
		class ussf_gren{};
		class ussf_grpfhr {};
		class ussf_m110 {};
		class ussf_mg {};
		class ussf_m136 {};
		class ussf_sani {};
		class ussf_schtz {};
		class ussf_spotter {};
		class ussf_xm2010 {};
		class ussf_zgfhr {};
	};
	class loadouts_usocp //US-Army OCP
	{
		file = "ADV_gear\loadouts\usocp";
		class usocp_crew {};
		class usocp_eod {};
		class usocp_grpfhr {};
		class usocp_gren {};
		class usocp_helipilot {};
		class usocp_jav {};
		class usocp_m14 {};
		class usocp_m136 {};
		class usocp_m249 {};
		class usocp_m240 {};
		class usocp_munm240{};
		class usocp_munm249{};
		class usocp_off {};
		class usocp_pilot {};
		class usocp_sani {};
		class usocp_schtz {};
		class usocp_zgfhr {};
	};
	class loadouts_uk //UK
	{
		file = "ADV_gear\loadouts\uk";
		class uk_base {};
		class uk_crew {};
		class uk_eng {};
		class uk_eod {};
		class uk_gren {};
		class uk_grpfhr{};
		class uk_helipilot{};
		class uk_jav{};
		class uk_jtac{};
		class uk_l86a2lsw{};
		class uk_m136{};
		class uk_m240{};
		class uk_m249{};
		class uk_marksm{};
		class uk_munm240{};
		class uk_munm249{};
		class uk_off{};
		class uk_pointm{};
		class uk_rop{};
		class uk_sani{};
		class uk_scharfschtz{};
		class uk_schtz{};
		class uk_schtz_rgw90{};
		class uk_zgfhr{};
	};
		class loadouts_usmarines //US-Marines OCP
	{
		file = "ADV_gear\loadouts\usmarines";
		class usmarines_crew {};
		class usmarines_eod {};
		class usmarines_grpfhr {};
		class usmarines_gren {};
		class usmarines_helipilot {};
		class usmarines_jav {};
		class usmarines_m14 {};
		class usmarines_m136 {};
		class usmarines_m249 {};
		class usmarines_m240 {};
		class usmarines_munm240{};
		class usmarines_munm249{};
		class usmarines_off {};
		class usmarines_pilot {};
		class usmarines_sani {};
		class usmarines_sanimd {};
		class usmarines_schtz {};
		class usmarines_zgfhr {};
	};
	
	class logistic_internal
	{
		file = "functions\logistic\internal";
		class dialogLogInit {};
		class dialogLogistic {};
		class dropLogistic {};
	};
	class logistic
	{
		class crateAA {};
		class crateAT {};
		class crateDrone {};
		class crateDrone_medic {};
		class crateEOD {};
		class crateGrenades {};
		class crateLarge {};
		class crateMedic {};
		class crateMG {};
		class crateNormal {};
		class crateShells {};
		class crateStuff {};
		class crateSupport {};
		class crateTeam {};
	};
	class serverGear
	{
		class clearCargo {};
	};
	class client
	{
		class timedHint {};
	};
	class gear_internal
	{
		file = "functions\gear\internal";
		class aceGear {};
		class aceMedicalItems {};
	};
	class server_internal
	{
		file = "functions\server\internal";
		class addACEItems {};
	};	
	
};
	class aeroson
{
	tag = "aeroson";
	class gearsaving
	{
		file = "ADV_gear\gearsaving";
		class getloadout {};
		class gearsaving {};
		class setloadout {};
	};
};