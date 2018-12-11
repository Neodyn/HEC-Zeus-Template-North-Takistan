MHQ_fnc_addAction = 
{
    private["_object","_args"];
    _object = _this select 0;
    _args = _this select 1;

    _object addaction _args;

};

if (!isNil "MHQ") then {deletevehicle MHQ};
_direction = markerDir "Spawn_MHQ";

if (side player == west ) then {
MHQ = "rhsusf_M1083A1P2_B_M2_d_MHQ_fmtv_usarmy" createvehicle (getmarkerpos "Spawn_MHQ");
sleep 0.2;
MHQ setDir _direction;
};

if (side player == east ) then {
MHQ = "rhsusf_M1083A1P2_B_M2_d_MHQ_fmtv_usarmy" createvehicle (getmarkerpos "Spawn_MHQ");
sleep 0.2;
MHQ setDir _direction;
};

publicvariable "MHQ";
[[MHQ, ["<t color='#ff1111'>Teleport to base</t>","MHQ\TPBASE.sqf",[],1,false,true,"",""]],"MHQ_fnc_addAction",true,true] spawn BIS_fnc_MP;
[[MHQ, ["<t color='#ff1111'>Virtual Arsenal</t>","MHQ\arsenal.sqf",[],1,false,true,"",""]],"MHQ_fnc_addAction",true,true] spawn BIS_fnc_MP;