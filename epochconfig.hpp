class CfgEpochClient
{
	buildingNearbyMilitary = 0; //1 to allow building nearby
	buildingNearbyMilitaryRange = 300; //Define radius of blocked area

	buildingRequireJammer = 0; // 1 = to allow building without a jammer 
	buildingCountLimit = 400; // how many objects can be built within range of a jammer 
	buildingJammerRange = 75; // jammer range in meters 

	class Altis
	{
		blockedArea[] = { //[POS],radius
				{ { 16085, 16997, 0 }, 250 }, //South Telos
				{ { 12844, 16714, 0 }, 120 }, //Soldner Base 
				{ { 3085, 13184, 0 }, 300 }, //Kavalar Carstel
				{ { 13493, 12013, 0 }, 450 }, //Makrynisi (Island)
				{ { 17439, 13165, 0 }, 165 }, //Pyrgorsk Military
				{ { 20084, 6728, 0 }, 55 }, //West of Selakano
				{ { 25303, 21807, 0 }, 100 } //Sofia	
		};
	};
	class Chernarus
	{
		blockedArea[] = {
				{ { 10203, 1886, 0 }, 430 }, //South Electro
				{ { 6822, 2498, 0 }, 600 }, //Cherno
				{ { 4612, 9670, 0 }, 140 }, //NWAF south barack
				{ { 4907, 10117, 0 }, 250 }, //NWAF NE hangas
				{ { 4707, 10384, 0 }, 200 }, //NWAF north barack
				{ { 4069, 10778, 0 }, 75 }, //NWAF west hangas
				{ { 4553, 10722, 0 }, 150 }, //NWAF NW hangas
				{ { 12279, 9505, 0 }, 350 }, //Berenzino Mid
				{ { 12816, 9816, 0 }, 400 }, //Berenzino SE
				{ { 12991, 10147, 0 }, 375 }, //Berenzino Docs
				{ { 2693, 5138, 0 }, 200 }, //Zeleno
				{ { 11467, 7508, 0 }, 150 }, //Polana Factory
				{ { 13092, 7096, 0 }, 140 } //Solnichniy Factory
		};
	};
};

class CfgEpochSapper
{
	detonateDistMax = 8; //Random distance between 3m and this number at which sapper detonates. Min value = 4
	groanTrig = 22; //Percentage chance of a groan. Min value = 4
	sRange = 300; //Distance from target over which sapper will dispose. Range within which sapper code will be aware of targets. Distance up to which sapper will attempt to find a spot to hide in. Min Value = 150.
	smellDist = 15; //Distance up to which sapper can smell. Used to decide if sapper can see target when deciding to charge and influences target selection. Is influenced by wind direction. Min Value = 8.
};

class CfgEpochUAV
{
	UAVMinDist = 48; //Minimum distance to choose next position when roaming. Min Value = 8.
	UAVMaxDist = 180; //Maximum distance to choose next position when roaming. Min Value = 42 / Max Value = 400.
	UAVHeight = 60; //Set height when roaming, slight randomness is applied to this value. UAV will choose own height when locked onto target. Min Value = 42 / Max Value = 280. UAV can still spot targets from height !
};

class CfgEpochAirDrop
{
	AirDropFreq = 1200; //AirDropChance, to decide if Air drop occurs, will only be checked once per AirDropFreq time period, for each player. Min value = 120.
	AirDropChance = 6; //Percentage chance of air drop, for current player. Checked every AirDropFreq and upon antagonists spawn trigger. -1 To disable.
};