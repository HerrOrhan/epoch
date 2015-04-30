liam_flashbang = 
{
	_blurEffect = ppEffectCreate ["DynamicBlur",500];
	_blurEffect ppEffectForceInNVG true;
	_blurEffect ppEffectEnable true;
	_ppEffect = ppEffectCreate ["ColorCorrections",2500];
	_ppEffect ppEffectAdjust [1, 1, -0.01, [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]];
	_ppEffect ppEffectCommit 0.1;
	_ppEffect ppEffectEnable true;
	_ppEffect ppEffectForceInNVG true;
	_blurEffect ppEffectAdjust [3];
	_blurEffect ppEffectCommit 0.2;
	23 fadeSound 0.1;
	sleep 10;
	_ppEffect ppEffectAdjust [1, 1, -0.02, [4.5, 3.5, 1.6, -0.02],[1.8, 1.6, 1.6, 1],[-1.5,0,-0.2,1]];
	_ppEffect ppEffectCommit 10;
	sleep 5;
	15 fadeSound 1;
	sleep 5;
	_ppEffect ppEffectEnable false;
	ppEffectDestroy _ppEffect;
	_blurEffect ppEffectAdjust [0];
	_blurEffect ppEffectCommit 3;
	sleep 3;
	_blurEffect ppEffectEnable false;
	ppEffectDestroy _blurEffect;
};

[] spawn {
	disableSerialization;
	while {true} do {
		waitUntil {sleep 1;((!isNull findDisplay 63) && (!isNull findDisplay 55))};
		if (ctrlText ((findDisplay 55) displayCtrl 101) == "\A3\ui_f\data\igui\rscingameui\rscdisplayvoicechat\microphone_ca.paa") then 
		{
			if (ctrlText ((findDisplay 63) displayCtrl 101) == localize "str_channel_side") then 
			{
				[] spawn {
					if (isNil "reset_timer") then {
						reset_timer = true;
						sleep 90;
						disconnect_me = nil;
						warn_one = nil;
						warn_two = nil;
						warn_last = nil;
						reset_timer = nil;
					};
				};
				if (isNil "disconnect_me") then {disconnect_me = 0;} else {disconnect_me = disconnect_me + 1;};
				if (disconnect_me == 0) then {
					if (isNil "warn_one") then {
						warn_one = true;
						[] spawn liam_flashbang;
						systemChat "PLEASE DO NOT USE VOICE ON SIDECHAT!! This is your ONLY warning!";
						systemChat "PLEASE DO NOT USE VOICE ON SIDECHAT!! This is your ONLY warning!";
						["### Speaking in sidechat '%1'",profileName] call bis_fnc_logFormat;
						["<t size = '0.8' shadow = '0' color = '#FF0606'>NO VOICE IN SIDE CHAT! This is your ONLY warning !<br/> or you DIE...</t>", 0, 1, 5, 2, 0, 1] spawn bis_fnc_dynamictext;
					};
				};
				if (disconnect_me == 1) then {
					if (isNil "warn_two") then {
						warn_two = true;
						[] spawn liam_flashbang;
						systemChat "PLEASE DO NOT USE VOICE ON SIDECHAT!! This is your LAST warning ! !";
						systemChat "PLEASE DO NOT USE VOICE ON SIDECHAT!! This is your LAST warning ! !";
						["### Speaking in sidechat Second'%1'",profileName] call bis_fnc_logFormat;
						["<t size = '0.8' shadow = '0' color = '#FF0606'>NO VOICE IN SIDE CHAT! This is your LAST warning ! !<br/> or you DIE...</t>", 0, 1, 5, 2, 0, 1] spawn bis_fnc_dynamictext;
					};
				};
				if (disconnect_me >= 2) then {
					if (isNil "warn_last") then {
						warn_last = true;
						disableUserInput true;
						player setDammage 1;
						["### Kill Player '%1' for Speaking in SideChat",profileName] call bis_fnc_logFormat;
						disableUserInput false;
						closedialog 0;
						//["VONside",false,false] call BIS_fnc_endMission;		
					};
				};
			};
		};
		sleep 1;
	};
};