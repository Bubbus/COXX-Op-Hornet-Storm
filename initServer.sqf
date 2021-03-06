// CA - Public Variables/General mission settings

// CA - Public Variables for CA folder
missionNamespace setVariable ["ca_defaultside",east, true]; // Default side for spawning enemies if side parameter is not present
missionNamespace setVariable ["ca_hcshowmarkers",false, true]; // If FPS markers should be viewable in the bottom left corner (Server plus HC)
missionNamespace setVariable ["ca_deletevehicles",false, true]; // Also deletes destroyed vehicles if body manager is on
missionNamespace setVariable ['ca_spawnerclassname','I_APC_tracked_03_cannon_F', true]; // Vehicle classname for vehiclespawner function
missionNamespace setVariable ['ca_bodymanageon',false, true]; // Body manager, leaves corpes with uniform but they have nothing useful on them or weapons, for mission difficulty and immersion
//[] spawn ca_fnc_bodymanage;

// CA - Public Variables for Respawn system
missionNamespace setVariable ['ca_respawnmode',1, true]; // Respawn modes: 0: Off, 1: Base respawn, 2: Spawn on Commanding Officer
missionNamespace setVariable ['ca_respawnwave',false, true]; // set to true for instant respawn
missionNamespace setVariable ['ca_wavecooldown',1, true]; // Seconds between each wave plus 60(window to respawn in)
missionNamespace setVariable ['ca_norespawnwaves',500, true]; // Number of waves the CO can call in.
missionNamespace setVariable ['ca_respawnmarker',"respawn_west", true]; // The respawn marker. Please use the corresponding marker for the side, ie "respawn_west", "respawn_east", "respawn_guerrila"
missionNamespace setVariable ['ca_respawnready',true, true]; // Internal synergising public variable

_respawnmsg = "Respawn wave deployed"; // Message sent to everyone in chat about reinforcement wave happening, set to "" to have no message
missionNamespace setVariable ['ca_respawnmsg',_respawnmsg, true];

// F3 Parameters
missionNamespace setVariable ['f_var_debugMode',0, true]; // Debug mode, deprecated but outputs some info for F3. 0 = off, 1 = on.
missionNamespace setVariable ['f_param_backpacks',1, true]; // Assigngear backpack loadout. 0 = light, 1 = medium, 2 = heavy
missionNamespace setVariable ['f_var_radios',3, true]; // Radio system. 0 = none, 2 = TFR, 3 = ACRE2
missionNamespace setVariable ['f_var_mission_timer',3, true]; // Safestart duration. Value in minutes
missionNamespace setVariable ['f_param_caching',1000, true]; // Ai Caching distance in meters, 0 = off

missionNamespace setVariable ["f_var_JIP_JIPMenu",true, true]; // Do JIP players get the JIP menu?
missionNamespace setVariable ["f_var_JIP_RespawnMenu",false, true]; // Do respawning players get the JIP menu?
missionNamespace setVariable ["f_var_JIP_RemoveCorpse",false, true]; // Remove the old corpse of respawning players?
missionNamespace setVariable ["f_var_JIP_Spectate",false, true]; // JIP players go into spectate straight away?

// CA - Parachute spawning
//_parachutearea = ""; // Name of area marker players will spawn in
// OR
//_parachutearea = [[0,1500,3000],[0,1500,3000]]; // Gaussian where first array is x(left to right) and second is y(up and down) with [min,normal,max]
// missionNamespace setVariable ['ca_parachutearea',_parachutearea, true];
/*
waitUntil {time>2; sleep 0.1;}; // initial paradrop, need to wait until spawned
{
[_x] remoteExec ["ca_fnc_parachute", _x, false];
} forEach playableUnits;
*/
