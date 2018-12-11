/*
 * Custom transport,support, and ammo classes for factions
 * Used by MP,MCP,ML to place support vehicles and ammo boxes
 * If no faction specific settings are found will fall back to side
 */

/*
 * Mil placement ambient vehicles for sides
 */

 waitUntil {!isNil "ALiVE_STATIC_DATA_LOADED"};


ALIVE_sideDefaultSupports = [] call ALIVE_fnc_hashCreate;
[ALIVE_sideDefaultSupports, "EAST", ["O_Truck_02_Ammo_F","O_Truck_02_box_F","O_Truck_02_fuel_F","O_Truck_02_medical_F","O_Truck_02_transport_F","O_Truck_02_covered_F"]] call ALIVE_fnc_hashSet; // ,"Box_East_AmmoVeh_F"
[ALIVE_sideDefaultSupports, "WEST", ["B_Truck_01_ammo_F","B_Truck_01_fuel_F","B_Truck_01_medical_F","B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F"]] call ALIVE_fnc_hashSet; // ,"Box_IND_AmmoVeh_F"
[ALIVE_sideDefaultSupports, "GUER", ["I_Truck_02_ammo_F","I_Truck_02_box_F","I_Truck_02_fuel_F","I_Truck_02_medical_F","I_Truck_02_covered_F","I_Truck_02_transport_F"]] call ALIVE_fnc_hashSet;
[ALIVE_sideDefaultSupports, "CIV", ["C_Van_01_box_F","C_Van_01_transport_F","C_Van_01_fuel_F"]] call ALIVE_fnc_hashSet;

/*
 * Mil placement random supply boxes for sides
 */

ALIVE_sideDefaultSupplies = [] call ALIVE_fnc_hashCreate;
[ALIVE_sideDefaultSupplies, "EAST", ["Box_East_Ammo_F","Box_East_AmmoOrd_F","Box_East_Grenades_F","Box_East_Support_F","Box_East_Wps_F","Box_East_WpsLaunch_F","Box_East_WpsSpecial_F"]] call ALIVE_fnc_hashSet;
[ALIVE_sideDefaultSupplies, "WEST", ["Box_NATO_Ammo_F","Box_NATO_AmmoOrd_F","Box_NATO_Grenades_F","Box_NATO_Support_F","Box_NATO_Wps_F","Box_NATO_WpsLaunch_F","Box_NATO_WpsSpecial_F"]] call ALIVE_fnc_hashSet;
[ALIVE_sideDefaultSupplies, "GUER", ["Box_IND_Ammo_F","Box_IND_AmmoOrd_F","Box_IND_Grenades_F","Box_IND_Support_F","Box_IND_Wps_F","Box_IND_WpsLaunch_F","Box_IND_WpsSpecial_F"]] call ALIVE_fnc_hashSet;

/*
 * Mil logistics convoy transport vehicles fallback for sides
 */

ALIVE_sideDefaultTransport = [] call ALIVE_fnc_hashCreate;
[ALIVE_sideDefaultTransport, "EAST", ["O_Truck_02_transport_F","O_Truck_02_covered_F"]] call ALIVE_fnc_hashSet;
[ALIVE_sideDefaultTransport, "WEST", ["B_Truck_01_transport_F","B_Truck_01_covered_F"]] call ALIVE_fnc_hashSet;
[ALIVE_sideDefaultTransport, "GUER", ["I_Truck_02_covered_F","I_Truck_02_transport_F"]] call ALIVE_fnc_hashSet;
[ALIVE_sideDefaultTransport, "CIV", ["C_Van_01_transport_F"]] call ALIVE_fnc_hashSet;

/*
 * Mil logistics air transport vehicles fallback for sides
 */

ALIVE_sideDefaultAirTransport = [] call ALIVE_fnc_hashCreate;
[ALIVE_sideDefaultAirTransport, "EAST", ["O_Heli_Attack_02_F","O_Heli_Light_02_F"]] call ALIVE_fnc_hashSet;
[ALIVE_sideDefaultAirTransport, "WEST", ["UK3CB_BAF_Vehicles_Merlin_RAF_ZJ124","UK3CB_BAF_Wildcat_Transport_RN_ZZ396"]] call ALIVE_fnc_hashSet;
[ALIVE_sideDefaultAirTransport, "GUER", ["I_Heli_light_03_unarmed_F","I_Heli_Transport_02_F"]] call ALIVE_fnc_hashSet;
[ALIVE_sideDefaultAirTransport, "CIV", []] call ALIVE_fnc_hashSet;

/*
 * Mil logistics airdrop containers fallback for sides
 */

ALIVE_sideDefaultContainers = [] call ALIVE_fnc_hashCreate;
[ALIVE_sideDefaultContainers, "EAST", ["ALIVE_O_supplyCrate_F"]] call ALIVE_fnc_hashSet;
[ALIVE_sideDefaultContainers, "WEST", ["ALIVE_B_supplyCrate_F"]] call ALIVE_fnc_hashSet;
[ALIVE_sideDefaultContainers, "GUER", ["ALIVE_I_supplyCrate_F"]] call ALIVE_fnc_hashSet;
[ALIVE_sideDefaultContainers, "CIV", []] call ALIVE_fnc_hashSet;

/*
 * Mil placement ambient vehicles per faction
 */

ALIVE_factionDefaultSupports = [] call ALIVE_fnc_hashCreate;
[ALIVE_factionDefaultSupports, "OPF_F", ["O_Truck_03_repair_F","O_Truck_03_ammo_F","O_Truck_03_fuel_F","O_Truck_03_medical_F","O_Truck_02_box_F","O_Truck_02_medical_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F","O_Truck_02_covered_F","O_Truck_02_transport_F","O_Truck_03_transport_F","O_Truck_03_covered_F","O_Truck_03_device_F"]] call ALIVE_fnc_hashSet; // ,"Box_East_AmmoVeh_F"
[ALIVE_factionDefaultSupports, "OPF_G_F", ["O_G_Offroad_01_armed_F","O_G_Van_01_fuel_F","O_G_Van_01_transport_F"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultSupports, "IND_F", ["I_Truck_02_ammo_F","I_Truck_02_box_F","I_Truck_02_fuel_F","I_Truck_02_medical_F","I_Truck_02_covered_F","I_Truck_02_transport_F"]] call ALIVE_fnc_hashSet; // ,"Box_IND_AmmoVeh_F"
[ALIVE_factionDefaultSupports, "BLU_F", ["B_Truck_01_ammo_F","B_Truck_01_fuel_F","B_Truck_01_medical_F","B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_APC_Tracked_01_CRV_F","B_Truck_01_mover_F"]] call ALIVE_fnc_hashSet; // ,"Box_NATO_AmmoVeh_F"
[ALIVE_factionDefaultSupports, "BLU_G_F", ["B_G_Van_01_fuel_F","B_G_Van_01_transport_F"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultSupports, "CIV_F", ["C_Van_01_box_F","C_Van_01_transport_F","C_Van_01_fuel_F"]] call ALIVE_fnc_hashSet;

/*
 * Mil placement random supply boxes per faction
 */

ALIVE_factionDefaultSupplies = [] call ALIVE_fnc_hashCreate;
[ALIVE_factionDefaultSupplies, "OPF_F", ["Box_East_Ammo_F","Box_East_AmmoOrd_F","Box_East_Grenades_F","Box_East_Support_F","Box_East_Wps_F","Box_East_WpsLaunch_F","Box_East_WpsSpecial_F"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultSupplies, "OPF_G_F", ["Box_East_Ammo_F","Box_East_AmmoOrd_F","Box_East_Grenades_F","Box_East_Support_F","Box_East_Wps_F","Box_East_WpsLaunch_F","Box_East_WpsSpecial_F"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultSupplies, "IND_F", ["Box_IND_Ammo_F","Box_IND_AmmoOrd_F","Box_IND_Grenades_F","Box_IND_Support_F","Box_IND_Wps_F","Box_IND_WpsLaunch_F","Box_IND_WpsSpecial_F"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultSupplies, "BLU_F", ["Box_NATO_Ammo_F","Box_NATO_AmmoOrd_F","Box_NATO_Grenades_F","Box_NATO_Support_F","Box_NATO_Wps_F","Box_NATO_WpsLaunch_F","Box_NATO_WpsSpecial_F"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultSupplies, "BLU_G_F", ["Box_IND_Ammo_F","Box_IND_AmmoOrd_F","Box_IND_Grenades_F","Box_IND_Support_F","Box_IND_Wps_F","Box_IND_WpsLaunch_F","Box_IND_WpsSpecial_F"]] call ALIVE_fnc_hashSet;

/*
 * Mil logistics convoy transport vehicles per faction
 */

ALIVE_factionDefaultTransport = [] call ALIVE_fnc_hashCreate;
[ALIVE_factionDefaultTransport, "OPF_F", ["O_Truck_02_transport_F","O_Truck_02_covered_F"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultTransport, "OPF_G_F", ["O_G_Van_01_transport_F"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultTransport, "IND_F", ["I_Truck_02_covered_F","I_Truck_02_transport_F"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultTransport, "BLU_F", ["B_Truck_01_transport_F","B_Truck_01_covered_F"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultTransport, "BLU_G_F", ["B_G_Van_01_transport_F"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultTransport, "CIV_F", ["C_Van_01_transport_F"]] call ALIVE_fnc_hashSet;

/*
 * Mil logistics air transport vehicles per faction
 */

ALIVE_factionDefaultAirTransport = [] call ALIVE_fnc_hashCreate;
[ALIVE_factionDefaultAirTransport, "OPF_F", ["O_Heli_Attack_02_F","O_Heli_Light_02_F"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultAirTransport, "OPF_G_F", ["I_Heli_light_03_unarmed_F"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultAirTransport, "IND_F", ["I_Heli_light_03_unarmed_F","I_Heli_Transport_02_F"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultAirTransport, "BLU_F", ["UK3CB_BAF_Vehicles_Merlin_RAF_ZJ124","UK3CB_BAF_Wildcat_Transport_RN_ZZ396"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultAirTransport, "BLU_G_F", ["I_Heli_light_03_unarmed_F"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultAirTransport, "CIV_F", []] call ALIVE_fnc_hashSet;

/*
 * Mil logistics airdrop containers per faction
 */

ALIVE_factionDefaultContainers = [] call ALIVE_fnc_hashCreate;
[ALIVE_factionDefaultContainers, "OPF_F", ["ALIVE_O_supplyCrate_F"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultContainers, "OPF_G_F", ["ALIVE_O_supplyCrate_F"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultContainers, "IND_F", ["ALIVE_I_supplyCrate_F"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultContainers, "BLU_F", ["ALIVE_B_supplyCrate_F"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultContainers, "BLU_G_F", ["ALIVE_B_supplyCrate_F"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultContainers, "CIV_F", []] call ALIVE_fnc_hashSet;