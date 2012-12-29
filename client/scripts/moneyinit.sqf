if (isNil (format ["%1_money", name_player])) then {
	call compile format ["%1 = 55000",playernameMoney];
	publicVariable (format ["%1",playernameMoney]);
};
player sidechat "moneyinit finished";