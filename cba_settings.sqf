
force TFAR_enableIntercom = true;
force TFAR_fullDuplex = false;
force TFAR_giveLongRangeRadioToGroupLeaders = false;
force TFAR_giveMicroDagrToSoldier = false;
force TFAR_givePersonalRadioToRegularSoldier = false;
force TFAR_objectInterceptionEnabled = false;
force TFAR_radioCodesDisabled = false;
force TFAR_SameLRFrequenciesForSide = true;
force TFAR_SameSRFrequenciesForSide = true;
force TFAR_spectatorCanHearEnemyUnits = true;
force TFAR_spectatorCanHearFriendlies = true;
force TFAR_takingRadio = 2;
force TFAR_setting_defaultFrequencies_lr_east = "51,52,53,54,55,56,57,58,59";
force TFAR_setting_defaultFrequencies_lr_independent = "71,72,73,74,75,76,78,79";
force TFAR_setting_defaultFrequencies_lr_west = "51,52,53,54,55,56,57,58,59";
force TFAR_setting_defaultFrequencies_sr_east = "41,42,43,44,45,46,47,48,49";
force TFAR_setting_defaultFrequencies_sr_independent = "61,62,63,64,65,67,68,69";
force TFAR_setting_defaultFrequencies_sr_west = "41,42,43,44,45,46,47,48,49";
//force TFAR_setting_DefaultRadio_Rifleman_West = "TFAR_rf7800str";
force TFAR_setting_DefaultRadio_Rifleman_West = "TFAR_anprc152";
force TFAR_setting_DefaultRadio_Personal_West = "TFAR_anprc152";
force TFAR_setting_DefaultRadio_Backpack_west = "TFAR_rt1523g";
force TFAR_setting_DefaultRadio_Airborne_West = "TFAR_anarc210";
force TFAR_setting_DefaultRadio_Rifleman_East = "TFAR_pnr1000a";
force TFAR_setting_DefaultRadio_Personal_east = "TFAR_fadak";
force TFAR_setting_DefaultRadio_Backpack_east = "TFAR_mr3000";
force TFAR_setting_DefaultRadio_Airborne_east = "TFAR_mr6000l";
force TFAR_setting_DefaultRadio_Rifleman_Independent = "TFAR_anprc154";
force TFAR_setting_DefaultRadio_Personal_Independent = "TFAR_anprc148jem";
force TFAR_setting_DefaultRadio_Backpack_Independent = "TFAR_anprc155";
force TFAR_setting_DefaultRadio_Airborne_Independent = "TFAR_anarc164";
force tfar_radiocode_east = "_opfor";
force tfar_radiocode_independent = "_independent";
force tfar_radiocode_west = "_bluefor";
force tfar_radioCodesDisabled = false;
force TFAR_Teamspeak_Channel_Name = "Einsatz";
force TFAR_Teamspeak_Channel_Password = "123";

//settings for ASR AI:
asr_ai3_main_setskills = true;
asr_ai3_main_seekcover = true;
asr_ai3_main_usebuildings = 0.8;
asr_ai3_main_getinweapons = 0.5;
asr_ai3_main_rearm = 0;
asr_ai3_main_rearm_mags = 0;
asr_ai3_main_rearm_fak = 0;
asr_ai3_main_radiorange = 0;
asr_ai3_main_rrdelaymin = 5;
asr_ai3_main_rrdelayplus = 10;
asr_ai3_main_packNVG = true;
asr_ai3_main_fallDown = true;
asr_ai3_main_pgaistamina = false;
asr_ai3_main_onteamswitchleader = true;
asr_ai3_main_debug_setskill = false;
asr_ai3_main_debug_setcamo = false;
asr_ai3_main_debug_findcover = false;
asr_ai3_main_debug_rearm = false;
asr_ai3_main_debug_reveal = false;

// ADV - ACE CPR
force adv_aceCPR_addTime = 25;
force adv_aceCPR_chance_0 = 10;
force adv_aceCPR_chance_1 = 49;
force adv_aceCPR_chance_2 = 49;
adv_aceCPR_chance_aed = 85;
adv_aceCPR_enable = true;
adv_aceCPR_maxTime = 1200;
adv_aceCPR_useLocation_AED = 0;


// ACE Advanced Ballistics
force ace_advanced_ballistics_ammoTemperatureEnabled = true;
force ace_advanced_ballistics_barrelLengthInfluenceEnabled = true;
force ace_advanced_ballistics_bulletTraceEnabled = true;
force ace_advanced_ballistics_enabled = true;
force ace_advanced_ballistics_muzzleVelocityVariationEnabled = true;
force ace_advanced_ballistics_simulationInterval = 0.05;

// ACE Advanced Fatigue
force ace_advanced_fatigue_enabled = true;
ace_advanced_fatigue_enableStaminaBar = true;
force ace_advanced_fatigue_loadFactor = 1;
force ace_advanced_fatigue_performanceFactor = 1;
force ace_advanced_fatigue_recoveryFactor = 2;
force ace_advanced_fatigue_terrainGradientFactor = 1;

// ACE Advanced Throwing
ace_advanced_throwing_enabled = true;
force ace_advanced_throwing_enablePickUp = true;
force ace_advanced_throwing_enablePickUpAttached = true;
ace_advanced_throwing_showMouseControls = true;
ace_advanced_throwing_showThrowArc = true;

// ACE Arsenal
force ace_arsenal_allowDefaultLoadouts = true;
force ace_arsenal_allowSharedLoadouts = true;
ace_arsenal_camInverted = false;
ace_arsenal_enableModIcons = true;
ace_arsenal_EnableRPTLog = false;
ace_arsenal_fontHeight = 4.5;

// ACE Captives
force ace_captives_allowHandcuffOwnSide = true;
force ace_captives_allowSurrender = true;
force ace_captives_requireSurrender = 1;
force ace_captives_requireSurrenderAi = false;

// ACE Common
force ace_common_allowFadeMusic = true;
force ace_common_checkPBOsAction = 0;
force ace_common_checkPBOsCheckAll = false;
force ace_common_checkPBOsWhitelist = "[]";
ace_common_displayTextColor = [0,0,0,0.1];
ace_common_displayTextFontColor = [1,1,1,1];
ace_common_settingFeedbackIcons = 1;
ace_common_settingProgressBarLocation = 0;
force ace_noradio_enabled = true;
ace_parachute_hideAltimeter = true;

// ACE Cook off
force ace_cookoff_ammoCookoffDuration = 1;
force ace_cookoff_enable = true;
force ace_cookoff_enableAmmobox = true;
force ace_cookoff_enableAmmoCookoff = true;
force ace_cookoff_probabilityCoef = 1;

// ACE Explosives
force ace_explosives_explodeOnDefuse = true;
force ace_explosives_punishNonSpecialists = true;
force ace_explosives_requireSpecialist = false;

// ACE Fragmentation Simulation
force ace_frag_enabled = true;
force ace_frag_maxTrack = 10;
force ace_frag_maxTrackPerFrame = 10;
force ace_frag_reflectionsEnabled = false;
force ace_frag_spallEnabled = false;

// ACE Goggles
force ace_goggles_effects = 2;
ace_goggles_showInThirdPerson = false;

// ACE Hearing
force ace_hearing_autoAddEarplugsToUnits = true;
ace_hearing_disableEarRinging = true;
force ace_hearing_earplugsVolume = 0.5;
force ace_hearing_enableCombatDeafness = false;
force ace_hearing_enabledForZeusUnits = false;
force ace_hearing_unconsciousnessVolume = 0.4;

// ACE Interaction
force ace_interaction_disableNegativeRating = true;
ace_interaction_enableMagazinePassing = true;
force ace_interaction_enableTeamManagement = true;

// ACE Interaction Menu
ace_gestures_showOnInteractionMenu = 2;
ace_interact_menu_actionOnKeyRelease = true;
ace_interact_menu_addBuildingActions = false;
ace_interact_menu_alwaysUseCursorInteraction = false;
ace_interact_menu_alwaysUseCursorSelfInteraction = false;
ace_interact_menu_colorShadowMax = [0,0,0,1];
ace_interact_menu_colorShadowMin = [0,0,0,0.25];
ace_interact_menu_colorTextMax = [1,1,1,1];
ace_interact_menu_colorTextMin = [1,1,1,0.25];
ace_interact_menu_cursorKeepCentered = false;
ace_interact_menu_menuAnimationSpeed = 0;
ace_interact_menu_menuBackground = 0;
ace_interact_menu_shadowSetting = 2;
ace_interact_menu_textSize = 2;
ace_interact_menu_useListMenu = false;

// ACE Logistics
force ace_cargo_enable = true;
force ace_cargo_paradropTimeCoefficent = 2.5;
force ace_refuel_hoseLength = 12;
force ace_refuel_rate = 1;
force ace_repair_addSpareParts = true;
force ace_repair_autoShutOffEngineWhenStartingRepair = true;
force ace_repair_consumeItem_toolKit = 0;
ace_repair_displayTextOnRepair = true;
force ace_repair_engineerSetting_fullRepair = 1;
force ace_repair_engineerSetting_repair = 1;
force ace_repair_engineerSetting_wheel = 0;
force ace_repair_fullRepairLocation = 0;
force ace_repair_repairDamageThreshold = 0.6;
force ace_repair_repairDamageThreshold_engineer = 0.4;
force ace_repair_wheelRepairRequiredItems = 0;

// ACE Magazine Repack
force ace_magazinerepack_timePerAmmo = 1.5;
force ace_magazinerepack_timePerBeltLink = 8;
force ace_magazinerepack_timePerMagazine = 2;

// ACE Map
force ace_map_BFT_Enabled = false;
force ace_map_BFT_HideAiGroups = false;
force ace_map_BFT_Interval = 1;
force ace_map_BFT_ShowPlayerNames = false;
force ace_map_defaultChannel = -1;
force ace_map_mapGlow = true;
force ace_map_mapIllumination = true;
force ace_map_mapLimitZoom = false;
force ace_map_mapShake = true;
force ace_map_mapShowCursorCoordinates = false;
ace_markers_moveRestriction = 0;

// ACE Map Gestures
ace_map_gestures_defaultColor = [1,0.88,0,0.7];
ace_map_gestures_defaultLeadColor = [1,0.88,0,0.95];
force ace_map_gestures_enabled = true;
force ace_map_gestures_interval = 0.03;
force ace_map_gestures_maxRange = 7;
ace_map_gestures_nameTextColor = [0.2,0.2,0.2,0.3];

// ACE Map Tools
ace_maptools_drawStraightLines = true;
ace_maptools_rotateModifierKey = 1;

// ACE Medical
force ace_medical_ai_enabledFor = 2;
force ace_medical_AIDamageThreshold = 1;
force ace_medical_allowDeadBodyMovement = false;
force ace_medical_allowLitterCreation = true;
force ace_medical_allowUnconsciousAnimationOnTreatment = false;
force ace_medical_amountOfReviveLives = -1;
force ace_medical_bleedingCoefficient = 0.7;
force ace_medical_blood_enabledFor = 2;
force ace_medical_consumeItem_PAK = 0;
force ace_medical_consumeItem_SurgicalKit = 0;
force ace_medical_delayUnconCaptive = 3;
force ace_medical_enableAdvancedWounds = false;
force ace_medical_enableFor = 0;
force ace_medical_enableOverdosing = true;
force ace_medical_enableRevive = 1;
force ace_medical_enableScreams = true;
force ace_medical_enableUnconsciousnessAI = 0;
force ace_medical_enableVehicleCrashes = true;
force ace_medical_healHitPointAfterAdvBandage = true;
force ace_medical_increaseTrainingInLocations = true;
force ace_medical_keepLocalSettingsSynced = true;
force ace_medical_level = 2;
force ace_medical_litterCleanUpDelay = 1000;
force ace_medical_litterSimulationDetail = 3;
force ace_medical_maxReviveTime = 1500;
force ace_medical_medicSetting = 1;
force ace_medical_medicSetting_basicEpi = 0;
force ace_medical_medicSetting_PAK = 1;
force ace_medical_medicSetting_SurgicalKit = 1;
force ace_medical_menu_allow = 1;
force ace_medical_menu_maxRange = 3;
ace_medical_menu_openAfterTreatment = true;
ace_medical_menu_useMenu = 0;
ace_medical_menuTypeStyle = 0;
force ace_medical_moveUnitsFromGroupOnUnconscious = false;
force ace_medical_painCoefficient = 0.7;
ace_medical_painEffectType = 0;
force ace_medical_painIsOnlySuppressed = false;
force ace_medical_playerDamageThreshold = 2;
force ace_medical_preventInstaDeath = true;
force ace_medical_remoteControlledAI = true;
force ace_medical_useCondition_PAK = 1;
force ace_medical_useCondition_SurgicalKit = 0;
force ace_medical_useLocation_basicEpi = 0;
force ace_medical_useLocation_PAK = 0;
force ace_medical_useLocation_SurgicalKit = 2;

// ACE Mk6 Mortar
force ace_mk6mortar_airResistanceEnabled = false;
force ace_mk6mortar_allowCompass = true;
force ace_mk6mortar_allowComputerRangefinder = true;
force ace_mk6mortar_useAmmoHandling = false;

// ACE Name Tags
ace_nametags_defaultNametagColor = [0.77,0.51,0.08,1];
force ace_nametags_playerNamesMaxAlpha = 0.8;
force ace_nametags_playerNamesViewDistance = 5;
force ace_nametags_showCursorTagForVehicles = false;
ace_nametags_showNamesForAI = false;
ace_nametags_showPlayerNames = 1;
ace_nametags_showPlayerRanks = true;
ace_nametags_showSoundWaves = 1;
ace_nametags_showVehicleCrewInfo = true;
ace_nametags_tagSize = 2;

// ACE Nightvision
force ace_nightvision_aimDownSightsBlur = 0.3;
force ace_nightvision_disableNVGsWithSights = false;
force ace_nightvision_effectScaling = 0.2;
force ace_nightvision_fogScaling = 0.5;
force ace_nightvision_noiseScaling = 0.4;

// ACE Overheating
ace_overheating_displayTextOnJam = true;
force ace_overheating_enabled = true;
force ace_overheating_overheatingDispersion = true;
ace_overheating_showParticleEffects = true;
ace_overheating_showParticleEffectsForEveryone = false;
force ace_overheating_unJamFailChance = 0.1;
force ace_overheating_unJamOnreload = false;

// ACE Pointing
force ace_finger_enabled = true;
ace_finger_indicatorColor = [0.83,0.68,0.21,0.75];
ace_finger_indicatorForSelf = true;
force ace_finger_maxRange = 4;

// ACE Pylons
force ace_pylons_enabled = true;
force ace_pylons_rearmNewPylons = false;
force ace_pylons_requireEngineer = false;
force ace_pylons_requireToolkit = true;
force ace_pylons_searchDistance = 15;
force ace_pylons_timePerPylon = 5;

// ACE Quick Mount
force ace_quickmount_distance = 3;
ace_quickmount_enabled = true;
ace_quickmount_priority = 0;
force ace_quickmount_speed = 18;

// ACE Rearm
force ace_rearm_level = 0;
force ace_rearm_supply = 0;

// ACE Respawn
force ace_respawn_removeDeadBodiesDisconnected = true;
force ace_respawn_savePreDeathGear = false;

// ACE Scopes
force ace_scopes_correctZeroing = true;
force ace_scopes_deduceBarometricPressureFromTerrainAltitude = false;
force ace_scopes_defaultZeroRange = 100;
force ace_scopes_enabled = true;
force ace_scopes_forceUseOfAdjustmentTurrets = false;
force ace_scopes_overwriteZeroRange = false;
force ace_scopes_simplifiedZeroing = false;
ace_scopes_useLegacyUI = false;
force ace_scopes_zeroReferenceBarometricPressure = 1013.25;
force ace_scopes_zeroReferenceHumidity = 0;
force ace_scopes_zeroReferenceTemperature = 15;

// ACE Spectator
force ace_spectator_enableAI = false;
force ace_spectator_restrictModes = 0;
force ace_spectator_restrictVisions = 0;

// ACE Switch Units
force ace_switchunits_enableSafeZone = true;
force ace_switchunits_enableSwitchUnits = false;
force ace_switchunits_safeZoneRadius = 100;
force ace_switchunits_switchToCivilian = false;
force ace_switchunits_switchToEast = false;
force ace_switchunits_switchToIndependent = false;
force ace_switchunits_switchToWest = false;

// ACE Tagging
ace_tagging_quickTag = 1;

// ACE Uncategorized
force ace_gforces_enabledFor = 1;
force ace_hitreactions_minDamageToTrigger = 0.1;
ace_inventory_inventoryDisplaySize = 0;
force ace_laser_dispersionCount = 2;
force ace_microdagr_mapDataAvailable = 2;
ace_optionsmenu_showNewsOnMainMenu = true;
force ace_overpressure_distanceCoefficient = 1;
ace_weaponselect_displayText = true;

// ACE User Interface
force ace_ui_allowSelectiveUI = true;
ace_ui_ammoCount = false;
ace_ui_ammoType = true;
ace_ui_commandMenu = true;
ace_ui_firingMode = true;
ace_ui_groupBar = false;
ace_ui_gunnerAmmoCount = true;
ace_ui_gunnerAmmoType = true;
ace_ui_gunnerFiringMode = true;
ace_ui_gunnerLaunchableCount = true;
ace_ui_gunnerLaunchableName = true;
ace_ui_gunnerMagCount = true;
ace_ui_gunnerWeaponLowerInfoBackground = true;
ace_ui_gunnerWeaponName = true;
ace_ui_gunnerWeaponNameBackground = true;
ace_ui_gunnerZeroing = true;
ace_ui_magCount = true;
ace_ui_soldierVehicleWeaponInfo = true;
ace_ui_staminaBar = true;
ace_ui_stance = true;
ace_ui_throwableCount = true;
ace_ui_throwableName = true;
ace_ui_vehicleAltitude = true;
ace_ui_vehicleCompass = true;
ace_ui_vehicleDamage = true;
ace_ui_vehicleFuelBar = true;
ace_ui_vehicleInfoBackground = true;
ace_ui_vehicleName = true;
ace_ui_vehicleNameBackground = true;
ace_ui_vehicleRadar = true;
ace_ui_vehicleSpeed = true;
ace_ui_weaponLowerInfoBackground = true;
ace_ui_weaponName = true;
ace_ui_weaponNameBackground = true;
ace_ui_zeroing = true;

// ACE Vehicle Lock
force ace_vehiclelock_defaultLockpickStrength = 10;
force ace_vehiclelock_lockVehicleInventory = false;
force ace_vehiclelock_vehicleStartingLockState = -1;

// ACE View Distance Limiter
force ace_viewdistance_enabled = true;
force ace_viewdistance_limitViewDistance = 10000;
ace_viewdistance_objectViewDistanceCoeff = 0;
ace_viewdistance_viewDistanceAirVehicle = 0;
ace_viewdistance_viewDistanceLandVehicle = 0;
ace_viewdistance_viewDistanceOnFoot = 0;

// ACE Weapons
ace_common_persistentLaserEnabled = false;
force ace_laserpointer_enabled = true;
ace_reload_displayText = true;

// ACE Weather
force ace_weather_enabled = false;
force ace_weather_updateInterval = 60;
force ace_weather_windSimulation = false;

// ACE Wind Deflection
force ace_winddeflection_enabled = true;
force ace_winddeflection_simulationInterval = 0.05;
force ace_winddeflection_vehicleEnabled = true;

// ACE Zeus
force ace_zeus_autoAddObjects = true;
force ace_zeus_radioOrdnance = false;
force ace_zeus_remoteWind = false;
force ace_zeus_revealMines = 0;
force ace_zeus_zeusAscension = false;
force ace_zeus_zeusBird = false;

// ACEX Uncategorized
force acex_headless_delay = 15;
force acex_headless_enabled = false;
force acex_headless_endMission = 0;
force acex_headless_log = false;
force acex_sitting_enable = true;

// ACEX View Restriction
force acex_viewrestriction_mode = 1;
force acex_viewrestriction_modeSelectiveAir = 1;
force acex_viewrestriction_modeSelectiveFoot = 1;
force acex_viewrestriction_modeSelectiveLand = 1;
force acex_viewrestriction_modeSelectiveSea = 1;

// ACEX Volume
acex_volume_enabled = false;
acex_volume_fadeDelay = 1;
acex_volume_lowerInVehicles = false;
acex_volume_reduction = 5;
acex_volume_remindIfLowered = false;
acex_volume_showNotification = true;


