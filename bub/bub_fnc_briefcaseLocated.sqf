params ["_briefcase", "_placeName"];

_markerStr = createMarker [_placeName, _briefcase];
_markerStr setMarkerShape "ICON";
_markerStr setMarkerType "hd_dot";
_markerStr setMarkerText "Briefcase located";

["TaskSucceeded",["", format ["Briefcase located in %1.", _placeName]]] remoteExec ["BIS_fnc_showNotification", west];
