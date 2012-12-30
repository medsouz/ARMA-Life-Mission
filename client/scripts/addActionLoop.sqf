while {true} do {
	_addedAction = Nil;
	_cursTarget = cursorTarget;
	if (!isNull _cursTarget && player distance _cursTarget < 6) then {
		player sidechat "!isNull _cursTarget";
		if (_cursTarget == atmn1) then {
			player sideChat "_cursTarget == Notebook";
			_addedAction = player addAction ["ATM","API\GUI\GUIBank.sqf"];
		};
	};
	sleep .3;
	waitUntil{ _cursTarget != cursorTarget };
	if (!isNil "_addedAction") then {player removeAction _addedAction;};
};