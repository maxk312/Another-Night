countdown = alarm_get(0);

if(countdown == 0){

switch(global.chica_state){
	
	case enum_chica_state.chica_is_on_cam1:
		global.chica_state = enum_chica_state.chica_is_looking_to_cam1
		break;
		
	case enum_chica_state.chica_is_looking_to_cam1:
		randomize();
		r = random_range(0, 1);
		if(r > 0.5){
		global.chica_state = enum_chica_state.chica_is_in_left_shaft;
		}
		else{
		global.chica_state = enum_chica_state.chica_is_on_cam2;
		}
		break;
		
	case enum_chica_state.chica_is_on_cam2:
		randomize();
		r = random_range(0, 1);
		if(r > 0.5){
		global.chica_state = enum_chica_state.chica_is_on_cam3;
		}
		else{
		global.chica_state = enum_chica_state.chica_is_on_cam4;
		}
		break;
		
	case enum_chica_state.chica_is_on_cam3:
		global.view_scene = enum_jump_scares.chica_jump_scare;
		timer = 5 * enum_game_vars.game_speed;
	    alarm_set(10, timer);
		break;
		
	case enum_chica_state.chica_is_on_cam4:
		randomize();
		r = random_range(0, 1);
		if(r > 0.5){
		global.chica_state = enum_chica_state.chica_is_on_cam3;
		}
		else{
		global.chica_state = enum_chica_state.chica_is_in_left_shaft;
		}
		break;
		
	case enum_chica_state.chica_is_in_left_shaft:
	    global.view_scene = enum_view_scene.jump_scare
	    global.view_scene_state = enum_jump_scares.chica_jump_scare;
		timer = 5 * enum_game_vars.game_speed;
	    alarm_set(10, timer);
		break;			
}
Update_screen();
SetTimeOfNextEnemyMove();

}