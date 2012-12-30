#define true 1
#define false 0
#define CT_STATIC 0
#define CT_BUTTON 1
#define CT_EDIT 2
#define CT_SLIDER 3
#define CT_COMBO 4
#define CT_LISTBOX 5
#define CT_TOOLBOX 6
#define CT_CHECKBOXES 7
#define CT_PROGRESS 8
#define CT_HTML 9
#define CT_STATIC_SKEW      10
#define CT_ACTIVETEXT 11
#define CT_TREE 12
#define CT_STRUCTURED_TEXT 13
#define CT_CONTEXT_MENU 14
#define CT_CONTROLS_GROUP 15
#define CT_SHORTCUTBUTTON 16
#define CT_XKEYDESC 40
#define CT_XBUTTON          41
#define CT_XLISTBOX 42
#define CT_XSLIDER 43
#define CT_XCOMBO           44
#define CT_ANIMATED_TEXTURE 45
#define CT_OBJECT 80
#define CT_OBJECT_ZOOM 81
#define CT_OBJECT_CONTAINER 82
#define CT_OBJECT_CONT_ANIM 83
#define CT_LINEBREAK 98
#define CT_ANIMATED_USER 99
#define CT_MAP              100
#define CT_MAP_MAIN 101
#define CT_LISTNBOX 102
// Static styles
#define ST_POS            0x0F
#define ST_HPOS           0x03
#define ST_VPOS           0x0C
#define ST_LEFT           0x00
#define ST_RIGHT          0x01
#define ST_CENTER         0x02
#define ST_DOWN           0x04
#define ST_UP             0x08
#define ST_VCENTER        0x0c

#define ST_TYPE           0xF0
#define ST_SINGLE         0
#define ST_MULTI          16
#define ST_TITLE_BAR      32
#define ST_PICTURE        48
#define ST_FRAME          64
#define ST_BACKGROUND     80
#define ST_GROUP_BOX      96
#define ST_GROUP_BOX2     112
#define ST_HUD_BACKGROUND 128
#define ST_TILE_PICTURE   144
#define ST_WITH_RECT      160
#define ST_LINE           176

#define ST_SHADOW         0x100
#define ST_NO_RECT        0x200 // this style works for CT_STATIC in conjunction with ST_MULTI
#define ST_KEEP_ASPECT_RATIO  0x800

#define ST_TITLE          ST_TITLE_BAR + ST_CENTER

// Slider styles
#define SL_DIR            0x400
#define SL_VERT           0
#define SL_HORZ           0x400

#define SL_TEXTURES       0x10

// Listbox styles
#define LB_TEXTURES       0x10
#define LB_MULTI          0x20

#define FontM             "Zeppelin32"
class RscText {
  type = CT_STATIC;
  idc = -1;
  style = ST_LEFT;
  colorBackground[] = {0, 0, 0, .5};
  colorText[] = {1, 1, 1, 1};
  font = FontM;
  sizeEx = 0.04;
};

class RscFrame
{
type = CT_STATIC;
idc = -1;
style = 64;
shadow = 2;
colorBackground[] = {0,0,0,0};
colorText[] = {1,1,1,1};
font = "Zeppelin32";
sizeEx = 0.02;
text = "";
};

class GrayBackground
{
 access = 0;
 type = CT_STATIC;
 idc = -1;
 style = ST_LEFT;
 //x and y are not part of a global class since each rsctext will be positioned 'somewhere'
 font = "TahomaB";
 sizeEx = 0.04;
 colorBackground[] = { 0, 0, 0, 0.5 };
 colorText[] = {1,1,1,1};
 text = "";
 fixedWidth = 0;
 shadow = 0;
};

class RscButton
{
 access = 0;
 type = CT_BUTTON;
 style = ST_LEFT;
 x = 0; y = 0; w = 0.3; h = 0.1;
 text = "";
 font = "TahomaB";
 sizeEx = 0.04;
 colorText[] = {0,0,0,1};
 colorDisabled[] = {0.3,0.3,0.3,1};
 colorBackground[] = {0.6,0.6,0.6,1};
 colorBackgroundDisabled[] = {0.6,0.6,0.6,1};
 colorBackgroundActive[] = {1,0.5,0,1};
 offsetX = 0.004;
 offsetY = 0.004;
 offsetPressedX = 0.002;
 offsetPressedY = 0.002;
 colorFocused[] = {0,0,0,1};
 colorShadow[] = {0,0,0,1};
 shadow = 0;
 colorBorder[] = {0,0,0,1};
 borderSize = 0.008;
 soundEnter[] = {"",0.1,1};
 soundPush[] = {"",0.1,1};
 soundClick[] = {"",0.1,1};
 soundEscape[] = {"",0.1,1};
};

class RscEdit
{
 access = 0;
 type = CT_EDIT;
 style = ST_LEFT+ST_FRAME;
 colorBackground[] = {0,0,0,0};
 colorText[] = {1,1,1,1};
 colorSelection[] = {1,1,1,0.25};
 font = "TahomaB";
 sizeEx = 0.04;
 autocomplete = "";
 text = "";
 size = 0.2;
 shadow = 0;
};

class GUIDisplayTest {
	idd = 3000;
	movingenable = 0;
	enablesimulation = true	;
	class Controls
	{
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "Bank Menu";
			x = 0.404687 * safezoneW + safezoneX;
			y = 0.24537 * safezoneH + safezoneY;
			w = 0.150625 * safezoneW;
			h = 0.0188889 * safezoneH;
		};
		class RscText_1001: RscText
		{
			idc = 1001;
			text = "Bank Amount";
			x = 0.397396 * safezoneW + safezoneX;
			y = 0.475926 * safezoneH + safezoneY;
			w = 0.176146 * safezoneW;
			h = 0.0225926 * safezoneH;
		};
		class RscText_1002: RscText
		{
			idc = 1002;
			text = "Bank:";
			x = 0.295833 * safezoneW + safezoneX;
			y = 0.476852 * safezoneH + safezoneY;
			w = 0.085 * safezoneW;
			h = 0.0225925 * safezoneH;		

		};
		class RscText_1003: RscText
		{
			idc = 1003;
			text = "On Person:";
			x = 0.297396 * safezoneW + safezoneX;
			y = 0.364815 * safezoneH + safezoneY;
			w = 0.0823959 * safezoneW;
			h = 0.0235185 * safezoneH;
		};
		class RscText_1004: RscText
		{
			idc = 1004;
			text = "Person Amount";
			x = 0.39948 * safezoneW + safezoneX;
			y = 0.363889 * safezoneH + safezoneY;
			w = 0.248542 * safezoneW;
			h = 0.0235186 * safezoneH;
};
		class RscText_1005: RscText
		{
			idc = 1005;
			text = "Withdraw:";
			x = 0.323437 * safezoneW + safezoneX;
			y = 0.503704 * safezoneH + safezoneY;
			w = 0.0600001 * safezoneW;
			h = 0.0225927 * safezoneH;
		};
		class RscText_1006: RscText
		{
			idc = 1006;
			text = "Deposit:";
			x = 0.324479 * safezoneW + safezoneX;
			y = 0.391667 * safezoneH + safezoneY;
			w = 0.0459375 * safezoneW;
			h = 0.0225926 * safezoneH;
		};
		class RscEdit_1400: RscEdit
		{
			idc = 1400;
			text = "Deposit Edit";
			x = 0.396875 * safezoneW + safezoneX;
			y = 0.389815 * safezoneH + safezoneY;
			w = 0.255833 * safezoneW;
			h = 0.0281481 * safezoneH;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Deposit";
			x = 0.566666 * safezoneW + safezoneX;
			y = 0.425926 * safezoneH + safezoneY;
			w = 0.081875 * safezoneW;
			h = 0.0318519 * safezoneH;
			action = "execVM ""API\GUI\scripts\GUIDeposit.sqf""";
		};
		class RscEdit_1401: RscEdit
		{
			idc = 1401;
			text = "Withdrawl Edit";
			x = 0.398958 * safezoneW + safezoneX;
			y = 0.499074 * safezoneH + safezoneY;
			w = 0.254271 * safezoneW;
			h = 0.03 * safezoneH;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = "Withdraw";
			x = 0.564584 * safezoneW + safezoneX;
			y = 0.531481 * safezoneH + safezoneY;
			w = 0.0813542 * safezoneW;
			h = 0.0374075 * safezoneH;
			action = "execVM ""API\GUI\scripts\GUIWithdraw.sqf""";
		};
		class RscText_1007: GrayBackground
		{
			idc = 1007;
			x = 0.29 * safezoneW + safezoneX;
			y = 0.241666 * safezoneH + safezoneY;
			w = 0.376667 * safezoneW;
			h = 0.391111 * safezoneH;
			text = "";
		};

	};
};