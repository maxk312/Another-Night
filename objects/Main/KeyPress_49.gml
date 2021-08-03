if(global.tablet_state == enum_tablet.on){

	global.view_scene = enum_view_scene.cam1;

	if(global.chica_state == enum_chica_state.chica_is_on_cam1){
		
		global.view_scene_state = enum_cam1_states.chica;
		
	}
	else if(global.chica_state == enum_chica_state.chica_is_looking_to_cam1){
	
		global.view_scene_state = enum_cam1_states.chica_looking_on_cam;
	
	}
	else{
		
		global.view_scene_state = enum_cam1_states.empty;
		
	}
	
	Update_screen();
}