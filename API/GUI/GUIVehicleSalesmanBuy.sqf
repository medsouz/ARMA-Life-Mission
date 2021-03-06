_menuName = "Skodas";
_menuRsc = "popup";

if (typeName _params == typeName []) then {
	if (count _params < 1) exitWith {diag_log format["Error: Invalid params: %1, %2", _this, __FILE__]};
	_menuName = _params select 1;
	//_menuRsc = if (count _params > 1) then {_params select 1} else {_menuRsc};
} else {
	_menuName = _params;
};
_salesman = _this select 0;
spawnPos = _salesman getVariable "spawnPos";
plyr = player;
playerMoney = _player getVariable "Money";
hint format["%1 | %2",_spawnPos, _player];
//_menus = [];
_menus = [
	[
		["Skodas","Buying a Skoda", _menuRsc],
		[
			["White Skoda ($2500)",{["Skoda", spawnPos, plyr, 2500] execVM "API\spawnVehicle.sqf";},"", "", "", -1,true],
            ["Blue Skoda ($2500)",{["SkodaBlue", spawnPos, plyr, 2500] execVM "API\spawnVehicle.sqf";},"", "", "", -1,true],
            ["Green Skoda ($2500)",{["SkodaGreen", spawnPos, plyr, 2500] execVM "API\spawnVehicle.sqf";},"", "", "", -1,true],
            ["Red Skoda ($2500)",{["SkodaRed", spawnPos, plyr, 2500] execVM "API\spawnVehicle.sqf";},"", "", "", -1,true]
		]
	],
    [
        ["Hatchbacks","Buying a Hatchback", _menuRsc],
		[
			["Golf ($5000)",{["VWGolf", spawnPos, plyr, 5000] execVM "API\spawnVehicle.sqf";},"", "", "", -1,true],
            ["Old Hatchback ($2500)",{["car_hatchback", spawnPos, plyr, 2500] execVM "API\spawnVehicle.sqf";},"", "", "", -1,true]
		]
    ],
    [
        ["Planes","Buying a Plane", _menuRsc],
		[
			["AN-2 TakAir ($125000)",{["An2_2_TK_CIV_EP1", spawnPos, plyr, 125000] execVM "API\spawnVehicle.sqf";},"", "", "", -1,true],
            ["AN-2P Civ ($125000)",{["An2_1_TK_CIV_EP1", spawnPos, plyr, 125000] execVM "API\spawnVehicle.sqf";},"", "", "", -1,true]
		]
    ],
    [
        ["Helicopters","Buying a Helicopter", _menuRsc],
		[
			["Little Bird (Civilian) ($150000)",{["AH6X_EP1", spawnPos, plyr, 150000] execVM "API\spawnVehicle.sqf";},"", "", "", -1,true],
            ["Mi17 (Civilian) ($175000)",{["Mi17_Civilian", spawnPos, plyr, 175000] execVM "API\spawnVehicle.sqf";},"", "", "", -1,true]
		]
    ]
];



_menuDef = [];
{
	if (_x select 0 select 0 == _menuName) exitWith {_menuDef = _x};
} forEach _menus;

if (count _menuDef == 0) then {
    hint format["%1",_menus];
	//hintC format ["Error: Menu not found: %1\n%2\n%3", str _menuName, if (_menuName == "") then {_this} else {""}, __FILE__];
	//diag_log format ["Error: Menu not found: %1, %2, %3", str _menuName, _params, __FILE__];
};

_menuDef