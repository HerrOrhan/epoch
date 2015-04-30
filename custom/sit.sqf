if ( cursorTarget isKindOf "Land_CampingChair_V1_F" && (player distance cursorTarget) < 2 ) then {
	if (chair < 0) then {
    	chair = player addaction[("<t color=""#0000ff"">" + ("sitdown") +"</t>"),"custom\sitdown.sqf","",5,false,true,"", ""];
    };
} else {
	player removeAction chair;
	chair = -1;
};
if ( cursorTarget isKindOf "Land_CampingChair_V2_F" && (player distance cursorTarget) < 2 ) then {
	if (chair < 0) then {
    	chair = player addaction[("<t color=""#0000ff"">" + ("sitdown") +"</t>"),"custom\sitdown.sqf","",5,false,true,"", ""];
    };
} else {
	player removeAction chair;
	chair = -1;
};
if ( cursorTarget isKindOf "Land_ChairPlastic_F" && (player distance cursorTarget) < 2 ) then {
	if (chair < 0) then {
    	chair = player addaction[("<t color=""#0000ff"">" + ("sitdown") +"</t>"),"custom\sitdown.sqf","",5,false,true,"", ""];
    };
} else {
	player removeAction chair;
	chair = -1;
};
if ( cursorTarget isKindOf "Land_ChairWood_F" && (player distance cursorTarget) < 2 ) then {
	if (chair < 0) then {
    	chair = player addaction[("<t color=""#0000ff"">" + ("sitdown") +"</t>"),"custom\sitdown.sqf","",5,false,true,"", ""];
    };
} else {
	player removeAction chair;
	chair = -1;
};