if(global.tablet_state == enum_tablet.on){

	global.view_scene = enum_view_scene.cam2;

	if(global.chica_state == enum_chica_state.chica_is_on_cam2){
		
		global.view_scene_state = enum_cam2_states.chica;
		
	}
	else if(global.bunny_state == enum_bunny_state.bunny_is_on_cam2){
	
		global.view_scene_state = enum_cam2_states.bunny;
	
	}
	else{
		
		global.view_scene_state = enum_cam2_states.empty;
		
	}
	
	Update_screen();
}