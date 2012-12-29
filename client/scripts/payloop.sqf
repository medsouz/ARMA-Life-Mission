<<<<<<< HEAD
_payxier = 1;
while {true} do {
	waitUntil {!isNil ("payday")};
	_pay =  5000 * _payxier;
	call compile format ["%1 = %1 + _pay",playernameMoney];
	publicVariable (format ["%1",playernameMoney]);
	player sidechat format ["You were payed $%1!",_pay];
	payday = Nil;
=======
_payxier = 1;
while {true} do {
	waitUntil {!isNil ("payday")};
	_pay =  5000 * _payxier;
	call compile format ["%1 = %1 + _pay",playernameMoney];
	publicVariable (format ["%1",playernameMoney]);
	player sidechat format ["You were payed $%1!",_pay];
	payday = Nil;
>>>>>>> Broke the repo for myself :D
};