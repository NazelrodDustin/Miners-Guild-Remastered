function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // obj_peasant
	global.__objectDepths[1] = 0; // obj_rock
	global.__objectDepths[2] = 0; // obj_ground
	global.__objectDepths[3] = 0; // obj_global
	global.__objectDepths[4] = 0; // obj_castle
	global.__objectDepths[5] = 0; // obj_upgrade
	global.__objectDepths[6] = 0; // obj_miner_make
	global.__objectDepths[7] = 1; // obj_super_miner
	global.__objectDepths[8] = 0; // obj_super_maker
	global.__objectDepths[9] = 2; // obj_ultra
	global.__objectDepths[10] = 0; // obj_ultra_maker
	global.__objectDepths[11] = 0; // obj_kill_rock
	global.__objectDepths[12] = 0; // obj_score


	global.__objectNames[0] = "obj_peasant";
	global.__objectNames[1] = "obj_rock";
	global.__objectNames[2] = "obj_ground";
	global.__objectNames[3] = "obj_global";
	global.__objectNames[4] = "obj_castle";
	global.__objectNames[5] = "obj_upgrade";
	global.__objectNames[6] = "obj_miner_make";
	global.__objectNames[7] = "obj_super_miner";
	global.__objectNames[8] = "obj_super_maker";
	global.__objectNames[9] = "obj_ultra";
	global.__objectNames[10] = "obj_ultra_maker";
	global.__objectNames[11] = "obj_kill_rock";
	global.__objectNames[12] = "obj_score";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
