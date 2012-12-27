_payxier = 1;
while {true} do {
	waitUntil {!isNil ("payday")};
	_pay =  5000 * _payxier;
	money = money + _pay;
	player sidechat format ["You were payed $%1!",_pay];
	payday = Nil;
};