_busRiderTypes = ["ibr_lingorman1","ibr_lingorman2","ibr_lingorman3","ibr_lingorman4","ibr_lingorman5","ibr_lingorman6","ibr_lingorman7"];
_atCurrentStop = [];
_onBus = [];
_bus = _this select 0;
_tasks = _this select 1;
_taskNum = 0;
_destination = _tasks select _taskNum;
for [{_x = 0}, {_x < (floor(random 6))+2}, {_x = _x + 1}] do {
    _n = floor(random count _busRiderTypes);
    _type = _busRiderTypes select _n;
    _guy = (createGroup civilian) createUnit [_type, [(_destination select 0)+7,_destination select 1, _destination select 2], [], 2, "FORM"] ;
    _atCurrentStop = _atCurrentStop + [_guy];
};
while {true} do{
    _dis = position _bus distance _destination;
    _sped = speed _bus;
    //hint format["Dis: %1 | Sped %2",_dis, _sped];
    if(_dis < 3 and _sped < 2 and _sped > -2) then {
        for [{_x = 0}, {_x < (count _atCurrentStop)}, {_x = _x + 1}] do {
            _guy = _atCurrentStop select _x;
            if(alive _guy) then {
	            _guy assignAsCargo _bus;
				[_guy] orderGetIn true;
	            _onBus = _onBus + [_guy];
            }
        };
        _atCurrentStop = [];
        titleText [format["Completed Task #%1 | %2",_taskNum, _onBus], "PLAIN"];
        _taskNum = _taskNum + 1;
        _destination = _tasks select _taskNum;
        for [{_x = 0}, {_x < (floor(random 6))+2}, {_x = _x + 1}] do {
		    _n = floor(random count _busRiderTypes);
		    _type = _busRiderTypes select _n;
		    _guy = (createGroup civilian) createUnit [_type, [(_destination select 0)+7,_destination select 1, _destination select 2], [], 2, "FORM"] ;
		    _atCurrentStop = _atCurrentStop + [_guy];
		};
    };
	//hint format["%1",_this];
    sleep 1;
};