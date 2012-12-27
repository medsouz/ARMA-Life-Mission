_menuName = "nil";
_menuRsc = "popup";

if (typeName _params == typeName []) then {
	if (count _params < 1) exitWith {diag_log format["Error: Invalid params: %1, %2", _this, __FILE__]};
    hint format["%1",_params];
	_menuName = _params select 1;
	//_menuRsc = if (count _params > 1) then {_params select 1} else {_menuRsc};
} else {
	_menuName = _params;
};
_menus = [];
_menus = [
		[
	        ["Cars","Buying a Car", _menuRsc],
			[
				["Buy Skodas >",{},"", "", ["API\GUI\GUIVehicleSalesmanBuy.sqf","Skodas"],-1, true],
	            ["Buy Hatchbacks >",{},"", "", ["API\GUI\GUIVehicleSalesmanBuy.sqf","Hatchbacks"],-1, true]
			]
        ],
        [
	        ["Planes","Buying a Plane", _menuRsc],
			[
				["Buy Planes >",{},"", "", ["API\GUI\GUIVehicleSalesmanBuy.sqf","Planes"],-1, true],
	            ["Buy Helicopters >",{},"", "", ["API\GUI\GUIVehicleSalesmanBuy.sqf","Helicopters"],-1, true]
			]
        ]
	];



_menuDef = [];
{
	if (_x select 0 select 0 == _menuName) exitWith {_menuDef = _x};
} forEach _menus;

if (count _menuDef == 0) then {
	hintC format ["Error: Menu not found: %1\n%2\n%3", str _menuName, if (_menuName == "") then {_this} else {""}, __FILE__];
	diag_log format ["Error: Menu not found: %1, %2, %3", str _menuName, _params, __FILE__];
};

_menuDef