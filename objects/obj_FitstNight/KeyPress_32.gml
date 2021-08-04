if(global.tablet_state == enum_tablet.off){

if(global.view_scene == enum_view_scene.hall){
	
	if(global.bunny_state == enum_bunny_state.bunny_is_in_hall){
		
		global.view_scene_state = enum_hall_state.bunny_is_in_hall;
		
	}
	else{
		
		global.view_scene_state = enum_hall_state.empty_light_on;
		
	}
}
else if(global.view_scene == enum_view_scene.left_shaft){
	
	if(global.chica_state == enum_chica_state.chica_is_in_left_shaft){
		
		global.view_scene_state = enum_left_shaft_state.chica;
		timer = 2 * enum_game_vars.game_speed;
	    alarm_set(1, timer);
	}
	else{
		
		global.view_scene_state = enum_left_shaft_state.empty_light;
		
	}
}
else if(global.view_scene == enum_view_scene.right_door){
	
		global.view_scene_state = enum_right_door_state.right_door_is_close;
		timer = 2 * enum_game_vars.game_speed;
		alarm_set(2, timer);
}

Update_screen();

}
