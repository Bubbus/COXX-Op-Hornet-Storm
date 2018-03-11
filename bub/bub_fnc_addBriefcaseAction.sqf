params ["_briefcase", "_text"];


if (isServer) then
{

	_onBriefInvestigate = compile format 
	[
		'params ["_target", "_caller"];

		[west,["brief%1"],["Briefcase found!  Map fragment: %1", "Briefcase found (%1).", ""], objNull, "Succeeded", 3, true] call BIS_fnc_taskCreate;
		
		deleteVehicle _target;', 
		
		_text
	];
	

	[
		_briefcase, 
		
		[
			"<t color='#FF8844'>Take the briefcase.</t>",
			_onBriefInvestigate,
			nil, 
			6, 
			true, 
			true, 
			"", 
			"true", 
			2
		]
		
	] remoteExec ["addAction", 0];
};