_amount = call compile ctrlText 1401;
if (call compile format ["_amount <= %1",playernameMoney]) then {
	call compile format ["%1 = %1 - _amount",playernameMoney];
	publicVariable format ["$1",playernameMoney];
	money = _amount + money;
	closeDialog 0;	
} else {
	player sidechat "Need more money in your bank account";
};
	