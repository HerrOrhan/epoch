/*
This script creates a hint by default that displays the players bearing when toggled on.
Toggle key is the "k" key
created by [RIP]BearBison
*/
if (isDedicated) exitwith {};

/* Private variables */
private ["_key", "_bearing","_text"];

/* Set the initial toggle state */
BEARB_compassheading_on = false;

/*
Determines if the old (text) or the new (hint) display method is used for the digital compass bearing
false = new style (in hint message)
true = old style (in text on screen)
*/
BEARB_compassheading_old = false;

/* Sets what happens when the toggle is pressed */
BEARB_compassheading_down =
{
	_key = _this select 1;
	if (_key == 37) then 
	{
		if (BEARB_compassheading_on) then
		{
			BEARB_compassheading_on = false;
		}
		else
		{
			BEARB_compassheading_on = true;
		};
	};
};

/* Sets what happens when the toggle is released */
BEARB_compassheading_up =
{
	_key = _this select 1;
	if (_key == 37 && !BEARB_compassheading_on) then
	{
	hint "";
	};
};
/* Ensures the primary display is found */
waitUntil {!isNull(findDisplay 46)};

/* Adds the eventhandlers to detect the toggle key press */
(findDisplay 46) displayAddEventHandler ["keyDown", "_this call BEARB_compassheading_down"];
(findDisplay 46) displayAddEventHandler ["keyUp", "_this call BEARB_compassheading_up"];

/* What happens when the toggle is true */
while {true} do
{
	if (BEARB_compassheading_on && "ItemCompass" in assignedItems Player) then
	{
		_bearing = getdir player;
		_bearing = round (_bearing);
		if (BEARB_compassheading_old) then
		{
			titleText [("                                                BEARING: " + str _bearing), "PLAIN DOWN", 0.02];
		}
		else
		{
			_text = "BEARING: ";
			hint parseText (_text + str _bearing);
		};
	};
};
