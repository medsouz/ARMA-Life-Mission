//if (isServer) exitWith{};
sleep 0.1;
money = 100;
if (!isNil ("playerList")) then{
    playerList = playerList + [name player];
}else{
    playerList = [name player];
};
publicVariable "playerList";
waitUntil {!isNil "CBA_ui_fnc_add"}; 
["player", [ace_sys_interaction_key_self], -10, ["API\GUI\GUISelf.sqf", "main"]] call CBA_ui_fnc_add; 
["player", [ace_sys_interaction_key], -10, ["API\GUI\GUIVehicleSalesman88.sqf", "main"]] call CBA_ui_fnc_add; 
execVM "client\scripts\payloop.sqf";