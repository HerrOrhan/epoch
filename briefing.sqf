if (!hasInterface) exitWith {};

waitUntil {!isNuLL(uiNameSpace getVariable ["EPOCH_loadingScreen",displayNull])};
waitUntil {isNuLL(uiNameSpace getVariable ["EPOCH_loadingScreen",displayNull])};

player createDiarySubject ["infos", "Infos and Help"];
player createDiarySubject ["rules", "Rules"];
player createDiarySubject ["Changelog", "Changelog"];

player createDiaryRecord ["Changelog",
[
"28.01.2015",
"
<br/>minor tweaks to AI Missions<br/>
<br/>IGIload edited<br/>
<br/>AI behavior script implemented for testing<br/>
<br/>changes at the northern island<br/>
"
]];

player createDiaryRecord ["Changelog",
[
"02.02.2015",
"
<br/>updated server files to 0.2.5.2 (B)<br/>
<br/>fix in lootspawn script<br/>
<br/>fixed server fps<br/>
<br/>fixed/changed AI Missions<br/>
<br/>updated Antihack<br/>
"
]];

player createDiaryRecord ["Changelog",
[
"03.02.2015",
"
<br/>hopefully fixed a database issue<br/>
<br/>Lootspawn script edited<br/>
<br/>some other fixes<br/>
<br/>report issues in ts<br/>even if no1 answers the issue gets logged
"
]];

player createDiaryRecord ["Changelog",
[
"11.02.2015",
"
<br/>updated FuMS Headless Client to current 1.1a<br/>
<br/>fix in lootspawn script<br/>
<br/>changed server network settings<br/>
<br/>changed AI Missions<br/>
"
]];

player createDiaryRecord ["Changelog",
[
"12.02.2015",
"
<br/>got rid of some scripts<br/>
<br/>fixed lootspawn script<br/>
<br/>fixed some ai mission related issues<br/>
<br/>changed the weather behavior<br/>
"
]];

player createDiaryRecord ["Changelog",
[
"16.02.2015",
"
<br/>updated AI missions<br/>
<br/>changed some weather settings<br/>
"
]];

player createDiaryRecord ["Changelog",
[
"21.02.2015",
"
<br/>adjusted lootboxes and ability of AI<br/>
"
]];

player createDiaryRecord ["Changelog",
[
"25.02.2015",
"
<br/>disabled day/night vote<br/>
<br/>changed some IGIload values<br/>
"
]];

player createDiaryRecord ["Changelog",
[
"28.02.2015",
"
<br/>Updated AI mission Framework to 1.3<br/>
"
]];

player createDiaryRecord ["Changelog",
[
"26.03.2015",
"
<br/>Updated to 0.3.0.1<br/>
<br/>
<br/>---since 0.3.0.1---
<br/>- a Frequency Jammer is needed to build
<br/>- 75m and 400 objects per jammer
<br/>
<br/>- it is not longer allowed to build in military places
<br/>- these areas have a 300m protection zone
"
]];

player createDiaryRecord ["Changelog",
[
"29.04.2015",
"
<br/>updated Headless Client script + missions
<br/>added custom crafting
<br/>added some other gimmicks<br/>
<br/>don't know where this will end
<br/>need a scripter i guess
"
]];

player createDiaryRecord ["Changelog",
[
"06.05.2015",
"
<br/>updated to 0.3.0.3
"
]];

player createDiaryRecord ["Changelog",
[
"11.05.2015",
"
<br/>Finally Anti-Hack update
<br/>headless client missions updated
<br/>some minor changes
"
]];

player createDiaryRecord ["rules",
[
"v1",
"
<br/>Hacking, Exploiting, Base-glitching and bug abusing will result in a ban<br/>
<br/>Be fair and act mature<br/>
<br/>
<br/>You don't need to ask or wait for players if you want to raid a base.<br/>
<br/>You may use any force to enter a base (except glitches etc)<br/>
<br/>Spawn camping:<br/>
<br/>-really?<br/>
<br/>-it's not forbidden but really?<br/>
<br/>Some vehicles may explode or despawn after any restart.<br/>
<br/>vehicle lock lasts a server runtime<br/>
<br/>remember:<br/>
<br/>this is ArmA 3 and not theSims<br/>
<br/>this is Epoch and not Altis-Life<br/>
"
]];

player createDiaryRecord ["rules",
[
"Mods",
"
<br/>Mods allowed on the server:<br/>
<br/>@DragonFyre
<br/>@RPA_Refined_Vehicles
<br/>@Arma Enhanced Movement
"
]];


player createDiaryRecord ["infos",
[
"how to Epoch",
"
<br/><font size='18'>nJoy-Epoch</font>
<br/>
<br/>* the main interaction key is [ I ] <br/>
<br/>- squish trashpiles, containers, interact with NPCs, loot AI or animals<br/>
<br/>
<br/>* there is AI roaming <br/>
<br/>
<br/>* loot spawns on ground too<br/>
<br/>
<br/>* to build a base u'll need<br/>
<br/>- Energy (charge in vehicles, at solar stations or windmills)<br/>
<br/>- [ 1 ] enables snapping mode<br/>
<br/>- [ 2 ] enables free-build mode<br/>
<br/>- [ 3 ] turns the current object (only snapping mode)<br/>
<br/>- to place an object press the mode key again<br/>
<br/>
<br/>* if u run into any issue try a relog before complain<br/>
<br/>
<br/>* to make the group able to build at the base the group founder has to place the frequency jammer<br/>
"
]];

player createDiaryRecord ["infos",
[
"Groups",
"
<br/>The Group leader has to set the frequency Jammer<br/>
<br/>-Members can set their own Jammer but building will be disallowed for others<br/>
<br/>
<br/>Lockboxes can be placed anywhere<br/>
<br/>-only the one who placed the box can pack it<br/>
<br/>
<br/>most of group related bugs will fix after a relog<br/>
"
]];

player createDiaryRecord ["infos",
[
"Controls",
"
<br/>[ I ] main interaction key<br/>
<br/>[ 1 ], [ 2 ], [ 3 ], [ 4 ] needed to build<br/>
<br/>[ INS ], [ DEL ] move object left/righ<br/>
<br/>[ HOME ], [ END ] move object forward/backward<br/>
<br/>[ PG UP ], [ PG DWN ] move object up/down<br/>
<br/>[ CTRL ] + [ R ] repack magazines<br/>
<br/>[ CTRL ] + [ SPACE ] weaponrest<br/>
<br/>[ ^ ] debug monitor<br/>
"
]];