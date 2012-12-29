if (isDedicated) exitWith{};
execVM "client\defines.sqf";
waitUntil {!isNil ("defines")};
sleep 0.1;
execVM "client\scripts\moneyinit.sqf";
if (!isNil ("playerList")) then{
    playerList = playerList + [name player];
}else{
    playerList = [name player];
};
publicVariable "playerList";
waitUntil {!isNil "CBA_ui_fnc_add"}; 
["player", [ace_sys_interaction_key_self], -10, ["API\GUI\GUISelf.sqf", "main"]] call CBA_ui_fnc_add; 
["player", [ace_sys_interaction_key], -10, ["API\GUI\GUIVehicleSalesman.sqf", "main"]] call CBA_ui_fnc_add; 
execVM "client\scripts\payloop.sqf";
player sidechat "initClient Done";