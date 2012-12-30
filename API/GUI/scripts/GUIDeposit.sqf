_amount = call compile ctrlText 1400;
player sidechat format ["%1",_amount];
if (money >= _amount) then {
	money = money - _amount;
	call compile format ["%1 = %1 + _amount",playernameMoney];
	publicVariable (format ["%1",playernameMoney]);
	closeDialog 0;
} else {
player sidechat "You Don't Have that much money BIATCH";
};
