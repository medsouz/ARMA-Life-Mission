hi = createdialog "GUIDisplayTest";
waitUntil {hi};
_servermoney = call compile format ["%1",playernameMoney];
ctrlSetText [1004,format ["%1",money]];
ctrlSetText [1001,format ["%1",_servermoney]];
// $[1.03,[[0,0,1,1],0.03125,0.05],[1000,"",[1,"Bank Menu",["0.404687 * safezoneW + safezoneX","0.24537 * safezoneH + safezoneY","0.150625 * safezoneW","0.0188889 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1001,"",[1,"Bank Amount",["0.39948 * safezoneW + safezoneX","0.363889 * safezoneH + safezoneY","0.248542 * safezoneW","0.0235186 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1002,"",[1,"Bank:",["0.297396 * safezoneW + safezoneX","0.364815 * safezoneH + safezoneY","0.0823959 * safezoneW","0.0235185 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1003,"",[1,"Amount on Person",["0.295833 * safezoneW + safezoneX","0.476852 * safezoneH + safezoneY","0.085 * safezoneW","0.0225925 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1004,"",[1,"Withdrawl Amount",["0.397396 * safezoneW + safezoneX","0.475926 * safezoneH + safezoneY","0.176146 * safezoneW","0.0225926 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1005,"",[1,"Withdraw:",["0.323437 * safezoneW + safezoneX","0.503704 * safezoneH + safezoneY","0.0600001 * safezoneW","0.0225927 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1006,"",[1,"Deposit:",["0.324479 * safezoneW + safezoneX","0.391667 * safezoneH + safezoneY","0.0459375 * safezoneW","0.0225926 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1400,"",[1,"Deposit Edit",["0.396875 * safezoneW + safezoneX","0.389815 * safezoneH + safezoneY","0.255833 * safezoneW","0.0281481 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1600,"",[1,"Deposit",["0.566666 * safezoneW + safezoneX","0.425926 * safezoneH + safezoneY","0.081875 * safezoneW","0.0318519 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1401,"",[1,"Withdrawl Edit",["0.398958 * safezoneW + safezoneX","0.499074 * safezoneH + safezoneY","0.254271 * safezoneW","0.03 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1601,"",[1,"Withdraw",["0.564584 * safezoneW + safezoneX","0.531481 * safezoneH + safezoneY","0.0813542 * safezoneW","0.0374075 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]]]
// v2 $[1.03,[[0,0,1,1],0.03125,0.05],[1000,"",[1,"Bank Menu",["0.404687 * safezoneW + safezoneX","0.24537 * safezoneH + safezoneY","0.150625 * safezoneW","0.0188889 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1001,"",[1,"Bank Amount",["0.39948 * safezoneW + safezoneX","0.363889 * safezoneH + safezoneY","0.248542 * safezoneW","0.0235186 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1002,"",[1,"Bank:",["0.297396 * safezoneW + safezoneX","0.364815 * safezoneH + safezoneY","0.0823959 * safezoneW","0.0235185 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1003,"",[1,"Amount on Person",["0.295833 * safezoneW + safezoneX","0.476852 * safezoneH + safezoneY","0.085 * safezoneW","0.0225925 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1004,"",[1,"Withdrawl Amount",["0.397396 * safezoneW + safezoneX","0.475926 * safezoneH + safezoneY","0.176146 * safezoneW","0.0225926 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1005,"",[1,"Withdraw:",["0.323437 * safezoneW + safezoneX","0.503704 * safezoneH + safezoneY","0.0600001 * safezoneW","0.0225927 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1006,"",[1,"Deposit:",["0.324479 * safezoneW + safezoneX","0.391667 * safezoneH + safezoneY","0.0459375 * safezoneW","0.0225926 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1400,"",[1,"Deposit Edit",["0.396875 * safezoneW + safezoneX","0.389815 * safezoneH + safezoneY","0.255833 * safezoneW","0.0281481 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1600,"",[1,"Deposit",["0.566666 * safezoneW + safezoneX","0.425926 * safezoneH + safezoneY","0.081875 * safezoneW","0.0318519 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1401,"",[1,"Withdrawl Edit",["0.398958 * safezoneW + safezoneX","0.499074 * safezoneH + safezoneY","0.254271 * safezoneW","0.03 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1601,"",[1,"Withdraw",["0.564584 * safezoneW + safezoneX","0.531481 * safezoneH + safezoneY","0.0813542 * safezoneW","0.0374075 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1800,"",[1,"",["0.295313 * safezoneW + safezoneX","0.227778 * safezoneH + safezoneY","0.388646 * safezoneW","0.392963 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]]]
// v3 $[1.03,[[0,0,1,1],0.03125,0.05],[1000,"",[1,"Bank Menu",["0.404687 * safezoneW + safezoneX","0.24537 * safezoneH + safezoneY","0.150625 * safezoneW","0.0188889 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1001,"",[1,"Bank Amount",["0.39948 * safezoneW + safezoneX","0.363889 * safezoneH + safezoneY","0.248542 * safezoneW","0.0235186 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1002,"",[1,"Bank:",["0.297396 * safezoneW + safezoneX","0.364815 * safezoneH + safezoneY","0.0823959 * safezoneW","0.0235185 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1003,"",[1,"Amount on Person",["0.295833 * safezoneW + safezoneX","0.476852 * safezoneH + safezoneY","0.085 * safezoneW","0.0225925 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1004,"",[1,"Withdrawl Amount",["0.397396 * safezoneW + safezoneX","0.475926 * safezoneH + safezoneY","0.176146 * safezoneW","0.0225926 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1005,"",[1,"Withdraw:",["0.323437 * safezoneW + safezoneX","0.503704 * safezoneH + safezoneY","0.0600001 * safezoneW","0.0225927 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1006,"",[1,"Deposit:",["0.324479 * safezoneW + safezoneX","0.391667 * safezoneH + safezoneY","0.0459375 * safezoneW","0.0225926 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1400,"",[1,"Deposit Edit",["0.396875 * safezoneW + safezoneX","0.389815 * safezoneH + safezoneY","0.255833 * safezoneW","0.0281481 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1600,"",[1,"Deposit",["0.566666 * safezoneW + safezoneX","0.425926 * safezoneH + safezoneY","0.081875 * safezoneW","0.0318519 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1401,"",[1,"Withdrawl Edit",["0.398958 * safezoneW + safezoneX","0.499074 * safezoneH + safezoneY","0.254271 * safezoneW","0.03 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1601,"",[1,"Withdraw",["0.564584 * safezoneW + safezoneX","0.531481 * safezoneH + safezoneY","0.0813542 * safezoneW","0.0374075 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1007,"",[1,"",["0.3 * safezoneW + safezoneX","0.241666 * safezoneH + safezoneY","0.376667 * safezoneW","0.391111 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]]]
