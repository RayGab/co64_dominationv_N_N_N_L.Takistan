// F3 - Folk ARPS Assign Gear Script - BAF TF 47 
// adapted by TF47 Dev Team
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DEFINE EQUIPMENT TABLES
// The blocks of code below identifies equipment for this faction
//
// Defined loadouts:
//		co			- commander
//		dc 			- deputy commander / squad leader
//		m 			- medic
//		cfr 		- combat first responder
//		ftl			- fire team leader
//		ar 			- automatic rifleman
//		aar			- assistant automatic rifleman
//		rat			- rifleman (AT)
//		dm			- designated marksman
//		mmgg		- medium mg gunner
//		mmgag		- medium mg assistant
//		matg		- medium AT gunner
//		matag		- medium AT assistant
//		hmgg		- heavy mg gunner (deployable)
//		hmgag		- heavy mg assistant (deployable)
//		hatg		- heavy AT gunner (deployable)
//		hatag		- heavy AT assistant (deployable)
//		mtrg		- mortar gunner (deployable)
//		mtrag		- mortar assistant (deployable)
//		msamg		- medium SAM gunner
//		msamag		- medium SAM assistant gunner
//		hsamg		- heavy SAM gunner (deployable)
//		hsamag		- heavy SAM assistant gunner (deployable)
//		sn			- sniper
//		sp			- spotter (for sniper)
//		vc			- vehicle commander
//		vg			- vehicle gunner
//		vd			- vehicle driver (repair)
//		pp			- air vehicle pilot / co-pilot
//		pcc			- air vehicle co-pilot (repair) / crew chief (repair)
//		pc			- air vehicle crew
//		eng			- engineer (demo)
//		engm		- engineer (mines)
//		uav			- UAV operator"
//		div    		- divers
//
//		r 			- rifleman
//		car			- carabineer
//		smg			- submachinegunner
//		gren		- grenadier
//
//		v_car		- car/4x4
//		v_tr		- truck
//		v_ifv		- ifv
//
//		crate_small	- small ammocrate
//		crate_med	- medium ammocrate
//		crate_large	- large ammocrate
//
// ====================================================================================

// GENERAL EQUIPMENT USED BY MULTIPLE CLASSES

// ATTACHMENTS - PRIMARY
_attach1 = "UK3CB_BAF_LLM_IR_Black";	// IR Laser
_attach2 = "UK3CB_BAF_LLM_Flashlight_Black";	// Flashlight

_silencer1 = "UK3CB_BAF_Silencer_L85";	// 5.56 suppressor
_silencer2 = "UK3CB_BAF_SFFH";	// Flashhider
_silencer3 = "UK3CB_BAF_Silencer_L110";		// LMG Silencer


_scope1 = "";						// Ironsight
_scope2 = "rhsusf_acc_eotech_552";			// Holosight
_scope3 = "rhsusf_acc_ACOG2_USMC";			// MRCO Scope - 1x - 6x
_scope4 = "UK3CB_BAF_SB31250";				// SOS Scope - 18x - 75x

_bipod1 = "bipod_01_F_snd";		// Default bipod
_bipod2 = "bipod_02_F_blk";		// Black bipod

// Default setup
_attachments = [_attach1,_scope1]; // The default attachment set for most units, overwritten in the individual unitType

// [] = remove all
// [_attach1,_scope1,_silencer] = remove all, add items assigned in _attach1, _scope1 and _silencer1
// [_scope2] = add _scope2, remove rest
// false = keep attachments as they are

// ====================================================================================

// ATTACHMENTS - HANDGUN
_hg_silencer1 = "muzzle_snds_L";	// .45 suppressor

_hg_scope1 = "UK3CB_BAF_Flashlight_L131A1";			// MRD

// Default setup
_hg_attachments= []; // The default attachment set for handguns, overwritten in the individual unitType

// ====================================================================================

// WEAPON SELECTION

// Standard Riflemen ( MMG Assistant Gunner, Assistant Automatic Rifleman, MAT Assistant Gunner, MTR Assistant Gunner, Rifleman)
_rifle = "UK3CB_BAF_L85A2_RIS";
_riflemag = "UK3CB_BAF_30Rnd";
_riflemag_tr = "30Rnd_556x45_Stanag_Tracer_Red";

// Standard Carabineer (Medic, Rifleman (AT), MAT Gunner, MTR Gunner, Carabineer)
_carbine = "UK3CB_BAF_L85A2_RIS";
_carbinemag = "UK3CB_BAF_30Rnd";
_carbinemag_tr = "UK3CB_BAF_30Rnd_T";

// Standard Submachine Gun/Personal Defence Weapon (Aircraft Pilot, Submachinegunner)
_smg = "UK3CB_BAF_L91A1";
_smgmag = "UK3CB_BAF_30Rnd_9mm";
_smgmag_tr = "UK3CB_BAF_30Rnd_9mm";

// Diver
_diverWep = "UK3CB_BAF_L92A1";
_diverMag1 = "UK3CB_BAF_30Rnd_9mm";
_diverMag2 = "UK3CB_BAF_30Rnd_9mm";

// Rifle with GL and HE grenades (CO, DC, FTLs)
_glrifle = "UK3CB_BAF_L85A2_UGL";
_glriflemag = "UK3CB_BAF_30Rnd";
_glriflemag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_glmag = "UK3CB_BAF_1Rnd_HEDP_Grenade_shell";

// Smoke for FTLs, Squad Leaders, etc
_glsmokewhite = "1Rnd_Smoke_Grenade_shell";
_glsmokegreen = "1Rnd_SmokeGreen_Grenade_shell";
_glsmokered = "1Rnd_SmokeRed_Grenade_shell";

// Flares for FTLs, Squad Leaders, etc
_glflarewhite = "UGL_FlareWhite_F";
_glflarered = "UGL_FlareRed_F";
_glflareyellow = "UGL_FlareYellow_F";
_glflaregreen = "UGL_FlareGreen_F";

// Pistols (CO, DC, Automatic Rifleman, Medium MG Gunner)
_pistol = "UK3CB_BAF_L131A1";
_pistolmag = "UK3CB_BAF_17Rnd_9mm";

// Grenades
_grenade = "rhs_mag_m67";
_Mgrenade = "MiniGrenade";
_smokegrenade = "SmokeShell";
_smokegrenadegreen = "SmokeShellGreen";

// misc medical items.
_firstaid = "FirstAidKit";
_medkit = "Medikit";

// Night Vision Goggles (NVGoggles)
_nvg = "UK3CB_BAF_HMNVS";

// UAV Terminal
_uavterminal = "B_UavTerminal";	  // BLUFOR - FIA

// Chemlights
_chemgreen =  "Chemlight_green";
_chemred = "Chemlight_red";
_chemyellow =  "Chemlight_yellow";
_chemblue = "Chemlight_blue";

// Backpacks
_bagsmall = "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A";			// carries 120, weighs 20
_bagmedium = "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A";				// carries 240, weighs 30
_baglarge =  "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A"; 			// carries 320, weighs 40
_bagmedic = _bagsmall;
_baglargeradio = _baglarge;
_bagautorifle = _bagmedium;
_bagmediumdiver =  "B_AssaultPack_blk";		// used by divers
_baguav = "B_UAV_01_backpack_F";			// used by UAV operator
_baghmgg = "B_HMG_01_weapon_F";				// used by Heavy MG gunner
_baghmgag = "B_HMG_01_support_F";			// used by Heavy MG assistant gunner
_baghatg = "B_AT_01_weapon_F";				// used by Heavy AT gunner
_baghatag = "B_HMG_01_support_F";			// used by Heavy AT assistant gunner
_bagmtrg = "B_Mortar_01_weapon_F";			// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";		// used by Mortar assistant gunner
_baghsamg = "B_AA_01_weapon_F";				// used by Heavy SAM gunner
_baghsamag = "B_HMG_01_support_F";			// used by Heavy SAM assistant gunner

// ====================================================================================

// UNIQUE, ROLE-SPECIFIC EQUIPMENT

// Automatic Rifleman
_AR = "UK3CB_BAF_L110A2";
_ARmag = "UK3CB_BAF_100Rnd";
_ARmag_tr = "UK3CB_BAF_100Rnd_T";

// Medium MG
_MMG = "UK3CB_BAF_L7A2";
_MMGmag = "UK3CB_BAF_75Rnd";
_MMGmag_tr = "UK3CB_BAF_75Rnd_T";

// NON-DLC ALTERNATIVE:
// _MMG = "LMG_Zafir_F";
// _MMGmag = ""150Rnd_762x54_Box"";
// _MMGmag_tr = ""150Rnd_762x54_Box"_Tracer";

// Marksman rifle
_DMrifle = "UK3CB_BAF_L129A1_FGrip";
_DMriflemag = "UK3CB_BAF_20Rnd";

// MAR-10
//_DMrifle = "srifle_DMR_02_F";
//_DMriflemag = "10Rnd_338_Mag";

// Rifleman AT
_RAT = "tf47_at4_heat";
//_RATmag = "tf47_m3maaws_HE";

// Medium AT
_MAT = "tf47_m3maaws";
_MATmag1 = "tf47_m3maaws_HE";
_MATmag2 = "tf47_m3maaws_HE";

// Surface Air
_SAM = "rhs_weap_fim92";
_SAMmag = "rhs_fim92_mag";

// Heavy AT
_HAT = "UK3CB_BAF_Javelin_Slung_Tube";
_HATmag1 = "UK3CB_BAF_Javelin_CLU";
_HATmag2 = "UK3CB_BAF_Javelin_CLU";

// Sniper
_SNrifle = " UK3CB_BAF_L82A1";
_SNrifleMag = "UK3CB_BAF_10Rnd_127x99mm";
_SNrifleMagAV = "UK3CB_BAF_10Rnd_127x99mm_SLAP"; // Anti Vehicle Ammunition

// Engineer items
_ATmine = "ATMine_Range_Mag";
_satchel = "SatchelCharge_Remote_Mag";
_APmine1 = "APERSBoundingMine_Range_Mag";
_APmine2 = "APERSMine_Range_Mag";

// ====================================================================================

// CLOTHES AND UNIFORMS

// Define classes. This defines which gear class gets which uniform
// "medium" vests are used for all classes if they are not assigned a specific uniform

_light = [];
_heavy =  ["eng","engm"];
_diver = ["div"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = [];

// Basic clothing
// The outfit-piece is randomly selected from the array for each unit
_baseUniform = ["UK3CB_BAF_U_CombatUniform_MTP"];
_baseHelmet = ["UK3CB_BAF_H_Mk7_Camo_A"];
_baseGlasses = [];

// Vests
_lightRig = ["UK3CB_BAF_V_Osprey"];
_mediumRig = ["UK3CB_BAF_V_Osprey"]; 	// default for all infantry classes
_heavyRig = ["UK3CB_BAF_V_Osprey"];

// Diver
_diverUniform =  ["U_B_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherB"];
_diverGlasses = ["G_Diving"];

// Pilot
_pilotUniform = ["UK3CB_BAF_U_HeliPilotCoveralls_RN"];
_pilotHelmet = ["UK3CB_BAF_H_PilotHelmetHeli_A"];
_pilotRig = ["UK3CB_BAF_V_Pilot_A"];
_pilotGlasses = ["rhs_googles_clear"];

// Crewman
_crewUniform = ["UK3CB_BAF_U_CrewmanCoveralls_RTR"];
_crewHelmet = ["UK3CB_BAF_H_CrewHelmet_A"];
_crewRig = [" UK3CB_BAF_V_Osprey"];
_crewGlasses = ["rhs_googles_clear"];

// Ghillie
_ghillieUniform = ["U_B_GhillieSuit"]; //DLC alternatives: ["U_B_FullGhillie_lsh","U_B_FullGhillie_ard","U_B_FullGhillie_sard"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_rgr"];
_ghillieGlasses = [];

// Spec Op
_sfuniform = ["rhs_uniform_FROG01_d"];
_sfhelmet = ["H_HelmetSpecB","H_HelmetSpecB_paint1","H_HelmetSpecB_paint2","H_HelmetSpecB_blk"];
_sfRig = ["rhsusf_spc"];
_sfGlasses = [];

// ====================================================================================

// INTERPRET PASSED VARIABLES
// The following inrerprets formats what has been passed to this script element

_typeofUnit = toLower (_this select 0);			// Tidy input for SWITCH/CASE statements, expecting something like : r = Rifleman, co = Commanding Officer, rat = Rifleman (AT)
_unit = _this select 1;					// expecting name of unit; originally passed by using 'this' in unit init
_isMan = _unit isKindOf "CAManBase";	// We check if we're dealing with a soldier or a vehicle

// ====================================================================================

// This block needs only to be run on an infantry unit
if (_isMan) then {

		// PREPARE UNIT FOR GEAR ADDITION
	// The following code removes all existing weapons, items, magazines and backpacks

	removeBackpack _unit;
	removeAllWeapons _unit;
	removeAllItemsWithMagazines _unit;
	removeAllAssignedItems _unit;

	// ====================================================================================

	// HANDLE CLOTHES
	// Handle clothes and helmets and such using the include file called next.

	#include "f_assignGear_clothes.sqf";

	// ====================================================================================

	// ADD UNIVERSAL ITEMS
	// Add items universal to all units of this faction

	_unit linkItem _nvg;			// Add and equip the faction's nvg
	_unit addItem _firstaid;		// Add a single first aid kit (FAK)
	_unit linkItem "ItemMap";		// Add and equip the map
	_unit linkItem "ItemCompass";		// Add and equip a compass
	_unit linkItem "ItemRadio";		// Add and equip A3's default radio
	_unit linkItem "ItemWatch";		// Add and equip a watch
	_unit addItemToVest "ACE_IR_Strobe_Item"; // Add IR Strobe
	_unit addItemToUniform "ACE_MapTools";	// Add Map Tools
	//_unit linkItem "ItemGPS"; 		// Add and equip a GPS

};


// ====================================================================================

// SETUP BACKPACKS
// Include the correct backpack file for the faction

_backpack = {
	_typeofBackPack = _this select 0;
	_loadout = f_param_backpacks;
	if (count _this > 1) then {_loadout = _this select 1};
	switch (_typeofBackPack) do
	{
		#include "f_assignGear_nato_tf47_b.sqf";
	};
};

// ====================================================================================

// DEFINE UNIT TYPE LOADOUTS
// The following blocks of code define loadouts for each type of unit (the unit type
// is passed to the script in the first variable)

switch (_typeofUnit) do
{

// ====================================================================================

// LOADOUT: COMMANDER
	case "co":
	{
		{ _unit addItemtoVest _glriflemag; } 		forEach [1,2,3,4,5,6,7];
		{ _unit addItemToVest _glriflemag_tr; } 	forEach	[1,2];
		{ _unit addItemToVest _glmag; }			forEach	[1,2,3];
		{ _unit addItemToVest _glsmokewhite; }		forEach [1,2,3,4];
		_unit addweapon _glrifle;					//_COrifle
		{_unit addmagazine _pistolmag; }		forEach [1,2];
		_unit addweapon _pistol;
		{ _unit addItemToVest _grenade; }		forEach [1];
		{ _unit addItemToVest _mgrenade; }		forEach [1];
		{ _unit addItemToVest _smokegrenade; }		forEach [1,2];
		{ _unit addItemToVest _smokegrenadegreen; }	forEach [1,2];
		_attachments = [_attach1,_scope3];
		_unit addWeapon "ACE_Vector";
		_unit linkItem "ItemGPS";
		["g"] call _backpack;
	};

// LOADOUT: DEPUTY COMMANDER AND SQUAD LEADER
	case "dc":
	{
		{ _unit addItemtoVest _glriflemag; } 		forEach [1,2,3,4,5,6,7];
		{ _unit addItemToVest _glriflemag_tr; } 	forEach	[1,2];
		{ _unit addItemToVest _glmag; }			forEach	[1,2,3];
		{ _unit addItemToVest _glsmokewhite; }		forEach [1,2,3,4];
		_unit addweapon _glrifle;					//_DCrifle
		{_unit addmagazine _pistolmag; }		forEach [1,2];
		_unit addweapon _pistol;
		{ _unit addItemToVest _grenade; }		forEach [1];
		{ _unit addItemToVest _mgrenade; }		forEach [1];
		{ _unit addItemToVest _smokegrenade; }		forEach [1,2];
		{ _unit addItemToVest _smokegrenadegreen; }	forEach [1,2];
		_attachments = [_attach1,_scope2];
		_unit addWeapon "ACE_Vector";
		_unit linkItem "ItemGPS";
		["g"] call _backpack;
	};

// LOADOUT: MEDIC
	case "m":
	{
		{ _unit addItemtoVest _carbinemag; } 		forEach [1,2,3,4,5,6,7];
		_unit addweapon _carbine;
		{ _unit addItemToVest _smokegrenade; }		forEach [1,2,3,4];
		{_unit addItem _firstaid} 			forEach [1,2,3,4];
		_attachments = [_attach1,_scope2];
		_unit linkItem "ItemGPS";
		{_unit addItemtoVest _pistolmag; }		forEach [1,2];
		_unit addweapon _pistol;
		["m"] call _backpack;
	};

// LOADOUT: COMBAT FIRST RESPONDER
	case "cfr":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,4];
		{_unit addItem _firstaid} forEach [1,2,3,4];
		_unit linkItem "ItemGPS";
		["cfr"] call _backpack;
	};

// LOADOUT: FIRE TEAM LEADER
	case "ftl":
	{
		{ _unit addItemtoVest _glriflemag; } 		forEach [1,2,3,4,5,6,7];
		{ _unit addItemToVest _glriflemag_tr; } 	forEach	[1,2];
		{ _unit addItemToVest _glmag; }			forEach	[1,2,3];
		{ _unit addItemToVest _glsmokewhite; }		forEach [1,2,3,4];
		_unit addweapon _glrifle;					//FTL Rifle
		{_unit addmagazine _pistolmag; }		forEach [1,2];
		_unit addweapon _pistol;
		{ _unit addItemToVest _grenade; }		forEach [1];
		{ _unit addItemToVest _mgrenade; }		forEach [1];
		{ _unit addItemToVest _smokegrenade; }		forEach [1,2];
		{ _unit addItemToVest _smokegrenadegreen; }	forEach [1,2];
		_attachments = [_attach1,_scope2];
		_unit addWeapon "ACE_Vector";
		_unit linkItem "ItemGPS";
		["g"] call _backpack;
	};


// LOADOUT: AUTOMATIC RIFLEMAN
	case "ar":
	{
		{ _unit addItemtoVest _ARmag; } 		forEach [1,2,3,4];
		_unit addweapon _AR;
		{ _unit addItemToVest _grenade; }		forEach [1];
		{ _unit addItemToVest _mgrenade; }		forEach [1];
		{ _unit addItemToVest _smokegrenade; }		forEach [1,2];
		{_unit addmagazine _pistolmag; }		forEach [1,2];
		_unit addweapon _pistol;
		["ar"] call _backpack;
		_attachments pushback (_bipod1);
	};

// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
	case "aar":
	{
		{ _unit addItemtoVest _riflemag; } 		forEach [1,2,3,4,5,6,7];
		{ _unit addItemtoVest _riflemag_tr; } 		forEach [1,2];
		_unit addweapon _rifle;
		{ _unit addItemToVest _grenade; }		forEach [1,2];
		{ _unit addItemToVest _mgrenade; }		forEach [1,2];
		{ _unit addItemToVest _smokegrenade; }		forEach [1,2];
		_unit addWeapon "Binocular";
		["aar"] call _backpack;
	};

// LOADOUT: RIFLEMAN (AT)
	case "rat":
	{
		{ _unit addItemtoVest _carbinemag; } 		forEach [1,2,3,4,5,6,7];
		{ _unit addItemtoVest _carbinemag_tr; } 	forEach [1,2];
		_unit addweapon _carbine;
		{ _unit addItemToVest _grenade; }		forEach [1,2];
		{ _unit addItemToVest _mgrenade; }		forEach [1,2];
		{ _unit addItemToVest _smokegrenade; }		forEach [1,2];
		["rat"] call _backpack;
		_unit addweapon _RAT;
	};

// LOADOUT: DESIGNATED MARKSMAN
	case "dm":
	{
		{_unit addItemToVest _DMriflemag; } 		forEach[1,2,3,4,5,6,7];
		_unit addweapon _DMrifle;
		{ _unit addItemToVest _grenade; }		forEach [1,2];
		{ _unit addItemToVest _mgrenade; }		forEach [1,2];
		{ _unit addItemToVest _smokegrenade; }		forEach [1,2];
		{_unit addmagazine _pistolmag; }		forEach [1,2,3];
		_attachments = [_attach1,_scope4];
		_unit addweapon _pistol;
		["dm"] call _backpack;
		_attachments = [_attach1,_scope3];
	};

// LOADOUT: MEDIUM MG GUNNER
	case "mmgg":
	{
		{_unit addItemToVest _MMGmag;}			forEach[1,2,3];
		_unit addweapon _MMG;
		{ _unit addItemToVest _smokegrenade; }		forEach [1,2];
		{_unit addmagazine _pistolmag; }		forEach [1,2,3,4];
		_unit addweapon _pistol;
		["mmg"] call _backpack;
		_attachments pushback (_bipod1);
	};

// LOADOUT: MEDIUM MG ASSISTANT GUNNER
	case "mmgag":
	{
		{ _unit addItemtoVest _riflemag; } 		forEach [1,2,3,4,5,6,7];
		{ _unit addItemtoVest _riflemag_tr; } 		forEach [1,2];
		_unit addweapon _rifle;
		_unit addWeapon "Binocular";
		{ _unit addItemToVest _grenade; }		forEach [1,2];
		{ _unit addItemToVest _mgrenade; }		forEach [1,2];
		{ _unit addItemToVest _smokegrenade; }		forEach [1,2];
		["mmgag"] call _backpack;
	};

// LOADOUT: HEAVY MG GUNNER
	case "hmgg":
	{
		{ _unit addItemtoVest _carbinemag; } 		forEach [1,2,3,4,5,6,7];
		{ _unit addItemtoVest _carbinemag_tr; } 	forEach [1,2];
		_unit addweapon _carbine;
		{ _unit addItemToVest _grenade; }		forEach [1];
		{ _unit addItemToVest _mgrenade; }		forEach [1];
		{ _unit addItemToVest _smokegrenade; }		forEach [1];
		["hmgg"] call _backpack;
	};

// LOADOUT: HEAVY MG ASSISTANT GUNNER
	case "hmgag":
	{
		{ _unit addItemtoVest _carbinemag; } 		forEach [1,2,3,4,5,6,7];
		{ _unit addItemtoVest _carbinemag_tr; } 	forEach [1,2];
		_unit addweapon _carbine;
		_unit addWeapon "Binocular";
		{ _unit addItemToVest _grenade; }		forEach [1];
		{ _unit addItemToVest _mgrenade; }		forEach [1];
		{ _unit addItemToVest _smokegrenade; }		forEach [1];
		["hmgag"] call _backpack;
	};

// LOADOUT: MEDIUM AT GUNNER
	case "matg":
	{
		["matg"] call _backpack;
		{ _unit addItemtoVest _carbinemag; } 		forEach [1,2,3,4,5,6,7];
		{ _unit addItemtoVest _carbinemag_tr; } 	forEach [1,2];
		{ _unit addItemToVest _smokegrenade; }		forEach [1,2];
		_unit addweapon _carbine;
		_unit addweapon _MAT;
	};

// LOADOUT: MEDIUM AT ASSISTANT GUNNER
	case "matag":
	{
		{ _unit addItemtoVest _carbinemag; } 		forEach [1,2,3,4,5,6,7];
		{ _unit addItemtoVest _carbinemag_tr; } 	forEach [1,2];
		_unit addweapon _carbine;
		_unit addWeapon "Rangefinder";;
		{ _unit addItemToVest _grenade; }		forEach [1];
		{ _unit addItemToVest _mgrenade; }		forEach [1];
		{ _unit addItemToVest _smokegrenade; }		forEach [1,2];
		["matag"] call _backpack;
	};

// LOADOUT: HEAVY AT GUNNER
	case "hatg":
	{
		{ _unit addItemtoVest _carbinemag; } 		forEach [1,2,3,4,5,6,7];
		_unit addweapon _carbine;
		["hatg"] call _backpack;
		_unit addWeapon _HAT;
	};

// LOADOUT: HEAVY AT ASSISTANT GUNNER
	case "hatag":
	{
		{ _unit addItemtoVest _carbinemag; } 		forEach [1,2,3,4,5,6,7];
		{ _unit addItemtoVest _carbinemag_tr; } 	forEach [1,2];
		_unit addweapon _carbine;
		_unit addWeapon "Binocular";
		{ _unit addItemToVest _grenade; }		forEach [1];
		{ _unit addItemToVest _mgrenade; }		forEach [1];
		{ _unit addItemToVest _smokegrenade; }		forEach [1];
		["hatag"] call _backpack;
	};

// LOADOUT: MORTAR GUNNER
	case "mtrg":
	{
		{ _unit addItemtoVest _carbinemag; } 		forEach [1,2,3,4,5,6,7];
		{ _unit addItemtoVest _carbinemag_tr; } 	forEach [1,2];
		_unit addweapon _carbine;
		{ _unit addItemToVest _grenade; }		forEach [1];
		{ _unit addItemToVest _mgrenade; }		forEach [1];
		{ _unit addItemToVest _smokegrenade; }		forEach [1];
		["mtrg"] call _backpack;
	};

// LOADOUT: MORTAR ASSISTANT GUNNER
	case "mtrag":
	{
		{ _unit addItemtoVest _carbinemag; } 		forEach [1,2,3,4,5,6,7];
		{ _unit addItemtoVest _carbinemag_tr; } 	forEach [1,2];
		_unit addweapon _carbine;
		{ _unit addItemToVest _grenade; }		forEach [1];
		{ _unit addItemToVest _mgrenade; }		forEach [1];
		{ _unit addItemToVest _smokegrenade; }		forEach [1];
		_unit addWeapon "ACE_Vector";
		["mtrag"] call _backpack;
	};

// LOADOUT: MEDIUM SAM GUNNER
	case "msamg":
	{
		["msamg"] call _backpack;
		{ _unit addItemtoVest _carbinemag; } 		forEach [1,2,3,4,5,6,7];
		{ _unit addItemtoVest _carbinemag_tr; } 	forEach [1,2];
		_unit addweapon _carbine;
		{ _unit addItemToVest _grenade; }		forEach [1];
		{ _unit addItemToVest _smokegrenade; }		forEach [1];
		_unit addweapon _SAM;
	};

// LOADOUT: MEDIUM SAM ASSISTANT GUNNER
	case "msamag":
	{
		{ _unit addItemtoVest _carbinemag; } 		forEach [1,2,3,4,5,6,7];
		{ _unit addItemtoVest _carbinemag_tr; } 	forEach [1,2];
		_unit addweapon _carbine;
		_unit addWeapon "ACE_Vector";
		{ _unit addItemToVest _grenade; }		forEach [1];
		{ _unit addItemToVest _smokegrenade; }		forEach [1];
		["msamag"] call _backpack;
	};

// LOADOUT: HEAVY SAM GUNNER
	case "hsamg":
	{
		{ _unit addItemtoVest _carbinemag; } 	forEach [1,2,3,4,5,6,7];
		{ _unit addItemtoVest _carbinemag_tr; } 	forEach [1,2];
		_unit addweapon _carbine;
		{ _unit addItemToVest _grenade; }		forEach [1];
		{ _unit addItemToVest _mgrenade; }		forEach [1];
		{ _unit addItemToVest _smokegrenade; }		forEach [1];
		["hsamg"] call _backpack;
	};

// LOADOUT: HEAVY SAM ASSISTANT GUNNER
	case "hsamag":
	{
		{ _unit addItemtoVest _carbinemag; } 		forEach [1,2,3,4,5,6,7];
		{ _unit addItemtoVest _carbinemag_tr; } 	forEach [1,2];
		_unit addweapon _carbine;
		_unit addWeapon "ACE_Vector";
		{ _unit addItemToVest _grenade; }		forEach [1];
		{ _unit addItemToVest _mgrenade; }		forEach [1];
		{ _unit addItemToVest _smokegrenade; }		forEach [1];
		["hsamag"] call _backpack;
	};

// LOADOUT: SNIPER
	case "sn":
	{
		{_unit addItemToVest _SNrifleMag;}		forEach [1,2,3,4,5,6,7,8,9];
		_unit addweapon _SNrifle;
		{_unit addmagazine _pistolmag; }		forEach [1,2,3,4];
		_unit addweapon _pistol;
		{ _unit addItemToVest _smokegrenade; }		forEach [1,2];
		_attachments = [_scope3];
	};

// LOADOUT: SPOTTER
	case "sp":
	{
		{ _unit addItemtoVest _glriflemag; } 		forEach [1,2,3,4,5,6,7];
		{ _unit addItemToVest _glriflemag_tr; } 	forEach	[1,2];
		{ _unit addItemToVest _glmag; }			forEach	[1,2,3];
		{ _unit addItemToVest _glsmokewhite; }		forEach [1,2,3,4];
		_unit addweapon _glrifle;					//_COrifle
		{_unit addmagazine _pistolmag; }		forEach [1,2,3,4];
		_unit addweapon _pistol;
		{ _unit addItemToVest _smokegrenade; }		forEach [1,2];
		_unit addWeapon "ACE_Vector";
		_unit linkItem "ItemGPS";
	};

// LOADOUT: VEHICLE COMMANDER
	case "vc":
	{
		{_unit addItemToVest _smgmag; }			forEach[1,2,3,4,5];
		_unit addweapon _smg;
		{ _unit addItemToVest _smokegrenade; }		forEach [1,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		_unit addWeapon "Binoculars";
	};

// LOADOUT: VEHICLE DRIVER
	case "vd":
	{
		{_unit addItemToVest _smgmag; }			forEach[1,2,3,4,5];
		_unit addweapon _smg;
		{ _unit addItemToVest _smokegrenade; }		forEach [1,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		["cc"] call _backpack;
	};

// LOADOUT: VEHICLE GUNNER
	case "vg":
	{
		{_unit addItemToVest _smgmag; }			forEach[1,2,3,4,5];
		_unit addweapon _smg;
		{ _unit addItemToVest _smokegrenade; }		forEach [1,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
	};

// LOADOUT: AIR VEHICLE PILOTS
	case "pp":
	{
		{_unit addItemToVest _smgmag; }			forEach[1,2,3,4,5];
		_unit addweapon _smg;
		{ _unit addItemToVest _smokegrenade; }		forEach [1,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
	};

// LOADOUT: AIR VEHICLE CREW CHIEF
	case "pcc":
	{
		{_unit addItemToVest _smgmag; }			forEach[1,2,3,4,5];
		_unit addweapon _smg;
		{ _unit addItemToVest _smokegrenade; }		forEach [1,2];
		["cc"] call _backpack;
	};

// LOADOUT: AIR VEHICLE CREW
	case "pc":
	{
		{_unit addItemToVest _smgmag; }			forEach[1,2,3,4,5];
		_unit addweapon _smg;
		{ _unit addItemToVest _smokegrenade; }		forEach [1,2];
	};

// LOADOUT: ENGINEER (DEMO)
	case "eng":
	{
		{ _unit addItemtoVest _carbinemag; } 		forEach [1,2,3,4,5,6,7];
		_unit addweapon _carbine;
		{ _unit addItemToVest _smokegrenade; }		forEach [1,2];
		{ _unit addItemToVest _grenade; }		forEach [1];
		{ _unit addItemToVest _mgrenade; }		forEach [1];
		{_unit addItemToVest _satchel; }		forEach [1,2];
		_unit addItem "MineDetector";
		["eng"] call _backpack;
	};

// LOADOUT: ENGINEER (MINES)
	case "engm":
	{
		{ _unit addItemtoVest _carbinemag; } 	forEach [1,2,3,4,5,6,7];
		_unit addweapon _carbine;
		{ _unit addItemToVest _smokegrenade; }		forEach [1,2];
		{ _unit addItemToVest _grenade; }		forEach [1];
		{ _unit addItemToVest _mgrenade; }		forEach [1];
		{_unit addItemToVest _APmine2; }		forEach [1,2];
		_unit addItem "MineDetector";
		["engm"] call _backpack;
	};

// LOADOUT: UAV OPERATOR
	case "uav":
	{
		{_unit addItemToVest _smgmag; }			forEach[1,2,3,4,5];
		_unit addweapon _smg;
		{ _unit addItemToVest _smokegrenade; }		forEach [1,2];
		{ _unit addItemToVest _grenade; }		forEach [1];
		{ _unit addItemToVest _mgrenade; }		forEach [1];
		_unit linkItem _uavterminal;
		["uav"] call _backpack;
		_unit addMagazines ["Laserbatteries",4];	// Batteries added for the F3 UAV Recharging component
	};

// LOADOUT: Diver
	case "div":
	{
		{_unit addmagazines _diverMag1; }		forEach [1,2,3,4];
		{_unit addmagazines _diverMag2; }		forEach [1,2,3];
		_unit addweapon _diverWep;
		{ _unit addItemToVest _smokegrenade; }		forEach [1,2,3];
		{ _unit addItemToVest _grenade; }		forEach [1,2,3];
		{ _unit addItemToVest _mgrenade; }		forEach [1,2,3];
		_attachments = [_attach1,_scope1,_silencer1];
		["div"] call _backpack;
	};

// LOADOUT: RIFLEMAN
	case "r":
	{
		{_unit addmagazines _riflemag; }		forEach[1,2,3,4,5,6,7];
		{_unit addmagazines _riflemag_tr; }		forEach[1,2];
		_unit addweapon _rifle;
		{ _unit addItemToVest _smokegrenade; }		forEach [1,2,3];
		{ _unit addItemToVest _grenade; }		forEach [1,2,3];
		{ _unit addItemToVest _mgrenade; }		forEach [1,2,3];
		["r"] call _backpack;
	};

// LOADOUT: CARABINEER
	case "car":
	{
		{ _unit addItemtoVest _carbinemag; } 		forEach [1,2,3,4,5,6,7];
		{ _unit addItemtoVest _carbinemag_tr; } 	forEach [1,2];
		_unit addweapon _carbine;
		{ _unit addItemToVest _smokegrenade; }		forEach [1,2,3];
		{ _unit addItemToVest _grenade; }		forEach [1,2,3];
		{ _unit addItemToVest _mgrenade; }		forEach [1,2,3];
		["car"] call _backpack;
	};

// LOADOUT: SUBMACHINEGUNNER
	case "smg":
	{
		{_unit addItemToVest _smgmag; }			forEach[1,2,3,4,5];
		_unit addweapon _smg;
		{ _unit addItemToVest _smokegrenade; }		forEach [1,2,3];
		{ _unit addItemToVest _grenade; }		forEach [1,2,3];
		{ _unit addItemToVest _mgrenade; }		forEach [1,2,3];
		["smg"] call _backpack;
	};

// LOADOUT: GRENADIER
	case "gren":
	{
		{ _unit addItemtoVest _glriflemag; } 		forEach [1,2,3,4,5,6,7];
		{ _unit addItemToVest _glriflemag_tr; } 	forEach	[1,2];
		_unit addweapon _glrifle;		
		{ _unit addItemToVest _glmag; }			forEach	[1,2,3,4,5,6];
		{ _unit addItemToVest _glsmokewhite; }		forEach [1,2];
		{ _unit addItemToVest _smokegrenade; }		forEach [1,2];
		{ _unit addItemToVest _grenade; }		forEach [1,2,3];
		{ _unit addItemToVest _mgrenade; }		forEach [1,2,3];
		["g"] call _backpack;
	};

// CARGO: CAR - room for 10 weapons and 50 cargo items
	case "v_car":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_carbine, 2];
		_unit addMagazineCargoGlobal [_riflemag, 8];
		_unit addMagazineCargoGlobal [_glriflemag, 8];
		_unit addMagazineCargoGlobal [_carbinemag, 10];
		_unit addMagazineCargoGlobal [_armag, 5];
		_unit addMagazineCargoGlobal [_ratmag, 1];
		_unit addMagazineCargoGlobal [_grenade, 4];
		_unit addMagazineCargoGlobal [_smokegrenade, 4];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_unit addMagazineCargoGlobal [_glmag, 4];
		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
		_unit addItemCargoGlobal [_firstaid,4];
	};

// CARGO: TRUCK - room for 50 weapons and 200 cargo items
	case "v_tr":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_carbine, 10];
		_unit addMagazineCargoGlobal [_riflemag, 40];
		_unit addMagazineCargoGlobal [_glriflemag, 40];
		_unit addMagazineCargoGlobal [_carbinemag, 40];
		_unit addMagazineCargoGlobal [_armag, 22];
		_unit addMagazineCargoGlobal [_ratmag, 6];
		_unit addMagazineCargoGlobal [_grenade, 12];
		_unit addmagazineCargoGlobal [_mgrenade,12];
		_unit addMagazineCargoGlobal [_smokegrenade, 12];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 4];
		_unit addMagazineCargoGlobal [_glmag, 12];
		_unit addMagazineCargoGlobal [_glsmokewhite, 12];
		_unit addItemCargoGlobal [_firstaid,8];
	};

// CARGO: IFV - room for 10 weapons and 100 cargo items
	case "v_ifv":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_carbine, 4];
		_unit addMagazineCargoGlobal [_riflemag, 20];
		_unit addMagazineCargoGlobal [_glriflemag, 20];
		_unit addMagazineCargoGlobal [_carbinemag, 20];
		_unit addMagazineCargoGlobal [_armag, 8];
		_unit addMagazineCargoGlobal [_ratmag, 2];
		_unit addMagazineCargoGlobal [_grenade, 8];
		_unit addmagazineCargoGlobal [_mgrenade,8];
		_unit addMagazineCargoGlobal [_smokegrenade, 8];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_unit addMagazineCargoGlobal [_glmag, 8];
		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
		_unit addItemCargoGlobal [_firstaid,6];
	};

// CRATE: Small, ammo for 1 fireteam
	case "crate_small":
{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 5];
		_unit addMagazineCargoGlobal [_glriflemag, 5];
		_unit addMagazineCargoGlobal [_armag, 5];
		_unit addMagazineCargoGlobal [_carbinemag, 5];
		_unit addMagazineCargoGlobal [_glmag, 5];
		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
		_unit addMagazineCargoGlobal [_ratmag, 2];
		_unit addMagazineCargoGlobal [_grenade, 8];
		_unit addMagazineCargoGlobal [_mgrenade, 8];
		_unit addMagazineCargoGlobal [_smokegrenade, 8];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_unit addItemCargoGlobal [_firstaid, 6];
};

// CRATE: Medium, ammo for 1 squad
	case "crate_med":
{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 15];
		_unit addMagazineCargoGlobal [_glriflemag, 20];
		_unit addMagazineCargoGlobal [_armag, 15];
		_unit addMagazineCargoGlobal [_carbinemag, 20];
		_unit addMagazineCargoGlobal [_glmag, 20];
		_unit addMagazineCargoGlobal [_glsmokewhite,16];
		_unit addMagazineCargoGlobal [_ratmag, 6];
		_unit addMagazineCargoGlobal [_grenade, 25];
		_unit addMagazineCargoGlobal [_mgrenade, 25];
		_unit addMagazineCargoGlobal [_smokegrenade, 25];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 6];
		_unit addItemCargoGlobal [_firstaid, 25];
};

// CRATE: Large, ammo for 1 platoon
	case "crate_large":
{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 45];
		_unit addMagazineCargoGlobal [_glriflemag, 60];
		_unit addMagazineCargoGlobal [_armag, 45];
		_unit addMagazineCargoGlobal [_carbinemag, 60];
		_unit addMagazineCargoGlobal [_glmag, 60];
		_unit addMagazineCargoGlobal [_glsmokewhite,50];
		_unit addMagazineCargoGlobal [_ratmag, 20];
		_unit addMagazineCargoGlobal [_grenade, 75];
		_unit addMagazineCargoGlobal [_mgrenade, 75];
		_unit addMagazineCargoGlobal [_smokegrenade, 75];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 20];
		_unit addItemCargoGlobal [_firstaid, 75];
};

// LOADOUT: DEFAULT/UNDEFINED (use RIFLEMAN)
   default
   {
		_unit addmagazines [_riflemag,7];
		_unit addweapon _rifle;

		_unit selectweapon primaryweapon _unit;

		if (true) exitwith {player globalchat format ["DEBUG (f\assignGear\f_assignGear_baf_tf47_wood.sqf): Unit = %1. Gear template %2 does not exist, used Rifleman instead.",_unit,_typeofunit]};
   };


// ====================================================================================

// END SWITCH FOR DEFINE UNIT TYPE LOADOUTS
};

// ====================================================================================
// If this is an ammobox, check medical component settings and if needed run converter script.

if (!_isMan) then
	{
	switch(f_var_medical) do
		{
				
		case 1: // ACE 3 Basic Medic System
			{
				[_unit] execVM "f\medical\ACEbasic_converter.sqf";
			};
			
		case 2: // ACE 3 Advanced Medic System
			{
				[_unit] execVM "f\medical\ACEadvanced_converter.sqf";
			};
		};
	};

// ====================================================================================
// If this isn't run on an infantry unit we can exit
if !(_isMan) exitWith {};

// ====================================================================================

// Handle weapon attachments
#include "f_assignGear_attachments.sqf";

// ====================================================================================

// ENSURE UNIT HAS CORRECT WEAPON SELECTED ON SPAWNING

_unit selectweapon primaryweapon _unit;


