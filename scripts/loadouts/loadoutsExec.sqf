/*
https://github.com/alganthe/Gantheframe/blob/master/template/scripts/loadouts/loadoutsexec.sqf < credit
Author: PMC-Tyler
Created: 2015-06-30
Last Modified: 2015-06-30

if (typeOf player == "unit_classname") then
	{
			null = [] execVM "loadouts/loadout_name.sqf";
	};
	
*/
_camo = 0; //set default value
params ["", "", "", "_camo"];
//if (isNull _camo) then {_camo = 0;};
switch (playerSide) do {
//---------------------------------------------------------------------------------------------------- BLUFOR
    case west: {
    
    

//-------------------------teamleader
    if (typeOf player == "B_Soldier_TL_F") then
        {
            [_camo] call PMCT_fnc_Load_B_TeamLead;
        };
//-------------------------AT
	if (typeOf player == "B_Soldier_LAT_F") then
		{
			[_camo] call PMCT_fnc_Load_B_LAT;
		};
//-------------------------medic
    if (typeOf player == "B_medic_F") then
        {
            [_camo] call PMCT_fnc_Load_B_Medic;
        };

//-------------------------explo_spec
    if (typeOf player == "B_Soldier_exp_F") then
        {
            [_camo] call PMCT_fnc_Load_B_Explosive;
        };
           
//-------------------------rifleman
    if (typeOf player == "B_Soldier_F") then
        {
            [_camo] call PMCT_fnc_Load_B_Rifleman
        };
                  
//-------------------------grenadier
    if (typeOf player == "B_Soldier_GL_F") then
        {
            [_camo] call PMCT_fnc_Load_B_Grenadier;
        };

            
//-------------------------autorifleman
    if (typeOf player == "B_soldier_AR_F") then
        {
            [_camo] call PMCT_fnc_Load_B_Autorifle;
        };

            
//-------------------------pilot
    if (typeOf player == "B_pilot_F") then
        {
            [_camo] call PMCT_fnc_Load_B_Pilot;
        };
            
//-------------------------heli pilot
    if (typeOf player == "B_helipilot_F") then
        {
			[_camo] call PMCT_fnc_Load_B_Heli_pilot;
        };        
	if (typeOf player == "B_officer_F") then
        {
			[_camo] call PMCT_fnc_Load_B_Officer;
        };      		
    };
//---------------------------------------------------------------------------------------------------- OPFOR
    case east: {
	
//-------------------------teamleader
    if (typeOf player == "O_Soldier_TL_F") then
        {
            [_camo] call PMCT_fnc_Load_O_TeamLead;
        };
//-------------------------AT
	if (typeOf player == "O_Soldier_LAT_F") then
		{
			[_camo] call PMCT_fnc_Load_O_LAT;
		};
//-------------------------medic
    if (typeOf player == "O_medic_F") then
        {
            [_camo] call PMCT_fnc_Load_O_Medic;
        };

//-------------------------explo_spec
    if (typeOf player == "O_Soldier_exp_F") then
        {
           [_camo] call PMCT_fnc_Load_O_Explosive;
        };
           
//-------------------------rifleman
    if (typeOf player == "O_Soldier_F") then
        {
            [_camo] call PMCT_fnc_Load_O_Rifleman;
        };
                  
//-------------------------grenadier
    if (typeOf player == "O_Soldier_GL_F") then
        {
           [_camo] call PMCT_fnc_Load_O_Grenadier;
        };

            
//-------------------------autorifleman
    if (typeOf player == "O_soldier_AR_F") then
        {
            [_camo] call PMCT_fnc_Load_O_Autorifle;
        };

            
//-------------------------pilot
    if (typeOf player == "O_pilot_F") then
        {
            [_camo] call PMCT_fnc_Load_O_Pilot;
        };
            
//-------------------------heli pilot
    if (typeOf player == "O_helipilot_F") then
        {
        [_camo] call PMCT_fnc_Load_O_Heli_pilot;
        };        
	if (typeOf player == "O_officer_F") then
        {
		[_camo] call PMCT_fnc_Load_O_Officer;
        }; 
    };
//---------------------------------------------------------------------------------------------------- REBEL
    case resistance: {
    };
};