_params = _this;
hint format["%1", _this];
_vtype = _params select 0;
_pos = _params select 1;
_person = _params select 2;
_price = _params select 3;
if (money >= _price) then {
    money = money - _price;
	_veh = _vtype createVehicle(_pos);
	hint format["spawned a vehicle (Type: %1, Position: %2) Player: %3 Money: $%4",_vtype,_pos, _person, money];   
}else{
    hint format["Cannot afford! Player: %1 Money: $%2", _person, money];
}