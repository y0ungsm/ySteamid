/*	Copyright (C) 2021 y0ung
	This program is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.
	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.
	
	You should have received a copy of the GNU General Public License
	along with this program. If not, see <http://www.gnu.org/licenses/>.
*/

#include <sourcemod>
#include <multicolors>

#pragma semicolon 1
#pragma newdecls required


public Plugin myinfo = 
{
	name = "[ CSGO ][ ySteamID ]", 
	author = "y0ung", 
	description = "[ ySteamID ]", 
	version = "1.0.0", 
	url = "FeelTheGame.eu"
};

public void OnPluginStart() {
	
	RegConsoleCmd("sm_steamid", MySteamId);
}

public Action MySteamId(int client, int args) {
	char GetSteamIdBuffer[32];
	GetClientAuthId(client, AuthId_Steam2, GetSteamIdBuffer, sizeof(GetSteamIdBuffer));
	CPrintToChat(client, "{darkred}SteamID {orange}zostało wygenerowane w konsoli. {green}(~)");
	PrintToConsole(client, "=========================================");
	PrintToConsole(client, "=========================================");
	PrintToConsole(client, "=========================================");
	PrintToConsole(client, "=====[SteamID]=====");
	PrintToConsole(client, " ★Twoje SteamID to : » %s", GetSteamIdBuffer);
	PrintToConsole(client, "=========================================");
	PrintToConsole(client, "=========================================");
	PrintToConsole(client, "=========================================");
	
}

/* © 2021 Coded with ❤ for clients		  */