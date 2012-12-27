_targ = cba_ui_target;
_job = _targ getVariable "job";
if(_job != "any") then {
private ["_target","_params","_menuName","_menuRsc","_menuDef","_menus"];
_target = _this select 0;
_params = _this select 1;

_menuName = _job;
_menuRsc = "popup";

/*_menus = [
  [
    ["main", "medmenu", _menuRsc], // Root menu, name of ???, rsc for it
    [
      ["MEDSOUZ >",
        {hint "fuck";}, // code to run
        "", "", // ?? and ??
		["Tests\menuSelf.sqf","self"], //submenu
		-1, // key
        (true)] //conditions
    ]
  ]
];*/
_i = _target getVariable "Money";
_arr = _Cars select 0;
_menus = [
	 	[["car", "vehsellsmenu", "popup"],[
	 		["Buy Cars >",{},"", "", ["API\GUI\GUIVehicleSalesmanSub.sqf","Cars"],-1, true]//,
            //["Goodbye!",{hint "Bye"},"", "", "",-1, 1, (true)]
        ]],
        [["plane", "vehsellsmenu", "popup"],[
	 		["Buy Planes >",{},"", "", ["API\GUI\GUIVehicleSalesmanSub.sqf","Planes"],-1, true]//,
            //["Goodbye!",{hint "Bye"},"", "", "",-1, 1, (true)]
        ]]
        ];
//-----------------------------------------------------------------------------
_menuDef = [];
{
  if (_x select 0 select 0 == _menuName) exitWith {_menuDef = _x};
} forEach _menus;

if (count _menuDef == 0) then {
  hintC format ["Error: Menu not found: %1\n%2\n%3", str _menuName, if (_menuName == "") then {_this}else{""},__FILE__];
  diag_log format ["Error: Menu not found: %1, %2, %3", str _menuName, _this, __FILE__];
};

_menuDef 
}