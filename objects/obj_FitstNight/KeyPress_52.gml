if(global.tablet_state == enum_tablet.on){

	global.view_scene = enum_view_scene.cam4;

	if(global.chica_state == enum_chica_state.chica_is_on_cam4){
		
		global.view_scene_state = enum_cam4_states.chica;
		
	}
	else{
		
		global.view_scene_state = enum_cam4_states.empty;
		
	}
	
	Update_screen();
}