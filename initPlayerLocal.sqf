call compile preprocessFile "scripts\BEARB_heading.sqf";

diag_log 'Starting  IgiLoad';
	0 = execVM "IgiLoad\IgiLoadInit.sqf";
	
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