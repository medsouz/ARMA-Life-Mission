// MADE BY MEDSOUZ (UNFUCKED BY SL8_SLICK)
if (!isDedicated) then {execVM "client\initClient.sqf";};
if (isServer) then {execVM "server\initServer.sqf";};
player sidechat "init Done"