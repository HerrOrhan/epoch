[] spawn {
	while {true} do {
		sleep 120;
		if (rain > 0.1) then {
			60 setRain 0;
			diag_log ("REMOVING RAIN");
		};
	};
};