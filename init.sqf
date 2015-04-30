diag_log 'Starting  Headless Client Mission';
	[] execVM "HC\Init.sqf";
	
diag_log 'Starting Weather';		
	[] execVM "real_weather.sqf";

diag_log 'Starting  earplugs';
	call compile preProcessFileLineNumbers "cmEarplugs\cm_veh_fun.sqf";

diag_log 'Starting  IgiLoad';
	0 = execVM "IgiLoad\IgiLoadInit.sqf";
	
diag_log 'Starting  MagRepack';
	[] execVM "outlw_magRepack\MagRepack_init_sv.sqf";
	
diag_log 'Starting  briefing.sqf';
	null =[] execvm "briefing.sqf";
	
diag_log 'Starting  sidechat.sqf';
	[] execVM "custom\sidechat.sqf";

diag_log 'Starting Climate Control';
	[] execVM "custom\climateControl.sqf";
	
diag_log 'Setting Friend/Enemy state';
	west setFriend [west, 0];
	west setFriend [civilian, 1];
	east setFriend [civilian, 1];
	resistance setFriend [civilian, 1];

	civilian setFriend [west, 1];
	civilian setFriend [east, 1];
	civilian setFriend [resistance, 1];	

CHVD_allowNoGrass = false;
CHVD_maxView = 3000;
CHVD_maxObj = 3000;

//Attach Explosives
if (!isDedicated and hasInterface) then 
{
	while {true} do
	{
		waitUntil {alive vehicle player};
		Sleep 10;
		[] execVM "custom\etv\EtV.sqf";
		waitUntil {!isNil "EtVInitialized"};
		[player] call EtV_Actions;
				
		waitUntil {!alive player};
		Sleep 10;
		[] execVM "custom\etv\EtV.sqf";
		waitUntil {!isNil "EtVInitialized"};
		[player] call EtV_Actions;	
		
		
	};
};