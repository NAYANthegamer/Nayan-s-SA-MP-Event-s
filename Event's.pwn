// NAYANthegamer Event System
// My Discord : nayanthegamer
// MY Discord Server : https://discord.gg/ASxc2xznzr

#include <a_samp>
#include <streamer>
#include <izcmd.inc>

new bool: Sniper[MAX_PLAYERS];
new bool: M4Devil[MAX_PLAYERS];
new bool: CarGO[MAX_PLAYERS];
new bool: InEvent[MAX_PLAYERS];

public OnFilterScriptInit()
{
	print("------------------------");
	print(" Nayan's Event's loaded ");
	print("------------------------");
	
    CreatePickup(335 ,3 ,-3461.0330,1664.3850,66.0415 ,0);
    CreatePickup(358 ,3 ,-3438.0564,1785.6772,66.0611 ,0);
    CreatePickup(336 ,3 ,-3392.3962,1784.3801,66.2538 ,0);
    CreatePickup(337 ,3 ,-3322.5183,1795.5392,66.0571 ,0);
    CreatePickup(373 ,3 ,-3314.3315,1763.0685,63.7973 ,0);
    CreatePickup(373 ,3 ,-3430.4739,1741.4113,66.0415 ,0);
    CreatePickup(1240,3 ,-3388.9763,1698.1442,66.0415 ,0);
    CreatePickup(348 ,3 ,-3428.8203,1833.9652,46.0349 ,0);
    CreatePickup(321 ,3 ,-3434.0183,1687.8445,71.7817 ,0);
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}

public OnPlayerConnect(playerid)
{
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	return 1;
}

public OnPlayerSpawn(playerid)
{
	if(Sniper[playerid] == true)
	{
		ResetPlayerWeapons(playerid);
     	Eventpackage(playerid);
    	new Spawn = random(5);
    	SetPlayerVirtualWorld(playerid, 23);
    	SetPlayerInterior(playerid, 0);
    	switch(Spawn)
    	{
    	  case 0:
     	  {
    	     SetPlayerPos(playerid, -3305.5742,1710.9148,66.0415);
    		 SetPlayerFacingAngle(playerid,99.8405);
    	  }
    	  case 1:
    	  {
	         SetPlayerPos(playerid, -3381.3835,1659.4771,66.0415);
    		 SetPlayerFacingAngle(playerid,335.6967);
    	  }
    	  case 2:
    	  {
     	     SetPlayerPos(playerid, -3446.7915,1680.2152,66.0805);
    		 SetPlayerFacingAngle(playerid,348.8568);
    	  }
    	  case 3:
     	  {
    	     SetPlayerPos(playerid, -3435.3967,1782.2611,66.0415);
     		 SetPlayerFacingAngle(playerid,186.1098);
    	  }
          case 4:
     	  {
     	     SetPlayerPos(playerid, -3391.7485,1782.7319,66.2633);
     		 SetPlayerFacingAngle(playerid,347.1021);
    	  }
    	  case 5:
    	  {
    	     SetPlayerPos(playerid, -3316.2441,1793.5986,66.0571);
     		 SetPlayerFacingAngle(playerid,171.1949);
    	  }
    	}
    }

	if(M4Devil[playerid] == true)
	{
		ResetPlayerWeapons(playerid);
     	M4package(playerid);
    	new Spawn = random(4);
    	SetPlayerVirtualWorld(playerid, 23);
		SetPlayerInterior(playerid, 0);
    	switch(Spawn)
    	{
    	  case 0:
     	  {
    	     SetPlayerPos(playerid, 942.4122,-1125.9700,23.9203);
    		 SetPlayerFacingAngle(playerid,100.5680);
    	  }
    	  case 1:
    	  {
	         SetPlayerPos(playerid, 857.3309,-1076.1945,24.2969);
    		 SetPlayerFacingAngle(playerid,150.1377);
    	  }
    	  case 2:
    	  {
     	     SetPlayerPos(playerid, 947.6115,-1064.5311,24.8468);
    		 SetPlayerFacingAngle(playerid,39.1540);
    	  }
    	  case 3:
     	  {
    	     SetPlayerPos(playerid, 844.1850,-1121.9656,23.9957);
     		 SetPlayerFacingAngle(playerid,298.8471);
    	  }
          case 4:
     	  {
     	     SetPlayerPos(playerid, 814.9786,-1104.4783,25.7893);
     		 SetPlayerFacingAngle(playerid,266.8242);
    	  }
    	}
    }
	if(CarGO[playerid] == true)
	{
		ResetPlayerWeapons(playerid);
     	Cgwpackage(playerid);
    	new Spawn = random(7);
    	SetPlayerVirtualWorld(playerid, 23);
		SetPlayerInterior(playerid, 0);
    	switch(Spawn)
    	{
    	  case 0:
     	  {
    	     SetPlayerPos(playerid, -2338.9175,1559.7839,17.3281);
    		 SetPlayerFacingAngle(playerid,89.0225);
    	  }
    	  case 1:
    	  {
	         SetPlayerPos(playerid, -2388.0242,1553.9193,26.0469);
    		 SetPlayerFacingAngle(playerid,2.9824);
    	  }
    	  case 2:
    	  {
     	     SetPlayerPos(playerid, -2417.9946,1554.1469,26.0469);
    		 SetPlayerFacingAngle(playerid,64.8350);
    	  }
    	  case 3:
     	  {
    	     SetPlayerPos(playerid, -2474.6680,1545.1694,23.6547);
     		 SetPlayerFacingAngle(playerid,0.7890);
    	  }
          case 4:
     	  {
     	     SetPlayerPos(playerid, -2470.8979,1538.4127,33.2344);
     		 SetPlayerFacingAngle(playerid,282.7056);
    	  }
    	  case 5:
    	  {
     	     SetPlayerPos(playerid, -2370.8237,1534.9347,10.8209);
    		 SetPlayerFacingAngle(playerid,53.3525);
    	  }
    	  case 6:
     	  {
    	     SetPlayerPos(playerid, -2427.1716,1536.6287,2.1172);
     		 SetPlayerFacingAngle(playerid,26.0062);
    	  }
          case 7:
     	  {
     	     SetPlayerPos(playerid, -2389.6401,1551.5474,2.1172);
     		 SetPlayerFacingAngle(playerid,6.7050);
    	  }
    	}
    }
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	if(InEvent[playerid] == true)
	{
	    new string[128];
	    new Killername[22];
	    GetPlayerName(killerid, Killername, sizeof(Killername));
	    format(string, sizeof(string), "~g~You were killed by ~n~~w~ %s", Killername);
	    GameTextForPlayer(playerid, string, 2500, 3);
	    GivePlayerMoney(playerid, 250);
	    return 1;
	}
	return 1;
}

public OnVehicleSpawn(vehicleid)
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	return 1;
}
//------------------------------------------------------------------------------
//commands
CMD:sniper(playerid, params[])
{
	if(InEvent[playerid] == true) return SendClientMessage(playerid, 0xff0080FF, "** You already joined a Minigame");
	{
		SpawnPlayer(playerid);
		ResetPlayerWeapons(playerid);
		Sniper[playerid] = true;
		InEvent[playerid] = true;
		Eventpackage(playerid);
	    new string[128];
	    new name[22];
	    GetPlayerName(playerid, name, sizeof(name));
	    format(string, sizeof(string), "** %s has joined the event Sniper Island to join (/sniper)", name);
		SendClientMessageToAll(0xff0000FF, string);
	}
	return 1;
}

CMD:m4(playerid, params[])
{
	if(InEvent[playerid] == true) return SendClientMessage(playerid, 0xff0080FF, "** You already joined a Minigame");
	{
		SpawnPlayer(playerid);
		ResetPlayerWeapons(playerid);
		M4Devil[playerid] = true;
		InEvent[playerid] = true;
		M4package(playerid);
	    new string[128];
	    new name[22];
	    GetPlayerName(playerid, name, sizeof(name));
	    format(string, sizeof(string), "** %s has joined the event M4 Devil to join (/m4)", name);
		SendClientMessageToAll(0xff0000FF, string);
	}
	return 1;
}

CMD:cgw(playerid, params[])
{
	if(InEvent[playerid] == true) return SendClientMessage(playerid, 0xff0080FF, "** You already joined a Minigame");
	{
		SpawnPlayer(playerid);
		ResetPlayerWeapons(playerid);
		CarGO[playerid] = true;
		InEvent[playerid] = true;
		Cgwpackage(playerid);
	    new string[128];
	    new name[22];
	    GetPlayerName(playerid, name, sizeof(name));
	    format(string, sizeof(string), "** %s has joined the event Car Go Wars to join (/cgw)", name);
		SendClientMessageToAll(0xff0000FF, string);
	}
	return 1;
}

CMD:exit(playerid, params[])
{
	if(InEvent[playerid] == true)
	{
		Sniper[playerid] = false;
		M4Devil[playerid] = false;
		CarGO[playerid] = false;
		InEvent[playerid] = false;
    	SetPlayerInterior(playerid, 0);
    	SetPlayerVirtualWorld(playerid, 0);
    	SendClientMessage(playerid, 0xf0ff00FF, "Your exit from minitgame");
		SpawnPlayer(playerid);
    }
	else return SendClientMessage(playerid, 0xf0ff00FF, "** Your not on any minigame");
    return 1;
}
//------------------------------------------------------------------------------

public OnPlayerText(playerid, text[])
{
	return 1;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	if(InEvent[playerid] == true) return 1;
	{
    	new Float:x,Float:y,Float:z;
        GetPlayerPos(playerid, x, y, z);
      	SetPlayerPos(playerid, x, y, z);
	    SendClientMessage(playerid, 0xF6F600AA , "Currently your on a minigame you can't enter on vehicle");
	    ShowPlayerDialog(playerid, 93334, DIALOG_STYLE_MSGBOX, "Minigame", "{ffffff}Your kicked from Minigame \n\
																			{ffffff}Kicked By: {ff0000} Server \n\
		                                                                    {ffffff}Reason: {ff0000}Enter on vehicle", "Close", "");
		KickPlayerFromEvent(playerid);
		SpawnPlayer(playerid);
	}
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	return 1;
}

public OnRconCommand(cmd[])
{
	return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	return 1;
}

public OnPlayerUpdate(playerid)
{
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	new string[128];
	new rname[MAX_PLAYER_NAME];
	new Float:x,Float:y,Float:z;
	
	GetPlayerName(clickedplayerid, rname, sizeof(rname));
    GetPlayerPos(playerid, x, y, z);
    GetPlayerInterior(playerid);
	
	if(InEvent[clickedplayerid] == true) return 1;
	{
        PlayerSpectatePlayer(playerid, clickedplayerid, SPECTATE_MODE_NORMAL);
        format(string, sizeof(string), "** Your Spectate %s (Id:%d) if you want to get back so click on your self" , rname, clickedplayerid);
	    SendClientMessage(playerid, 0xF6F600AA , string);
	}
	if(clickedplayerid == playerid)
	{
		TogglePlayerSpectating(playerid,0);
	   	SetPlayerPos(playerid, x, y, z);
    }
	return 1;
}

Eventpackage(playerid)
{
GivePlayerWeapon(playerid, 34, 999999999);
SetPlayerArmour(playerid, 100);
SetPlayerHealth(playerid, 100);
}

KickPlayerFromEvent(playerid)
{
Sniper[playerid] = false;
M4Devil[playerid] = false;
CarGO[playerid] = false;
InEvent[playerid] = false;
}

M4package(playerid)
{
GivePlayerWeapon(playerid, 31, 999999999);
SetPlayerHealth(playerid, 100);
SetPlayerArmour(playerid, 100);
SetPlayerTime(playerid, 2, 42);
}

Cgwpackage(playerid)
{
GivePlayerWeapon(playerid, 5, 1);
GivePlayerWeapon(playerid, 23, 9999);
GivePlayerWeapon(playerid, 25, 9999);
GivePlayerWeapon(playerid, 39, 2);
SetPlayerHealth(playerid, 100);
SetPlayerArmour(playerid, 100);
}

//This System made my NAYANthegamer ( aka Martin )
