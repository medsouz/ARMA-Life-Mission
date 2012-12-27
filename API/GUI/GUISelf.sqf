private ["_target","_params","_menuName","_menuRsc","_menuDef","_menus"];
hint "D:";
_target = _this select 0;
_params = _this select 1;

_menuName = "main";
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
_i = money;
_menus = [
	 	[["main", "medmenu", "popup"],[
	 		[format["Money: $%1",_i],{},"", "", "",-1, 0]//,
            //["Goodbye!",{hint "Bye"},"", "", "",-1, 1, (true)]
        ]
	 ]];
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