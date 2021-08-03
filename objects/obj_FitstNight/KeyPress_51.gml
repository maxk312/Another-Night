if(global.tablet_state == enum_tablet.on){

	global.view_scene = enum_view_scene.cam3;

	if(global.chica_state == enum_chica_state.chica_is_on_cam3){
		
		global.view_scene_state = enum_cam3_states.chica;
		
	}
	else{
		
		global.view_scene_state = enum_cam3_states.empty;
		
	}
	
	Update_screen();
}