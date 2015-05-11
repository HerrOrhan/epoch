diag_log 'Starting  Headless Client Mission';
	[] execVM "HC\Init.sqf";
	
diag_log 'Starting  MagRepack';
	[] execVM "outlw_magRepack\MagRepack_init_sv.sqf";

diag_log 'Starting  earplugs';
	call compile preProcessFileLineNumbers "cmEarplugs\cm_veh_fun.sqf";
	
diag_log 'attach_explosives';
	if (!isDedicated and hasInterface) then 
{
	while {true} do
	{
		waitUntil {alive vehicle player};
		Sleep 30;
		[] execVM "addons\etv\EtV.sqf";
		waitUntil {!isNil "EtVInitialized"};
		[player] call EtV_Actions;
				
		waitUntil {!alive player};
		Sleep 30;
		[] execVM "addons\etv\EtV.sqf";
		waitUntil {!isNil "EtVInitialized"};
		[player] call EtV_Actions;	
		
		
	};
};