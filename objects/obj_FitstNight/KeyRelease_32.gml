if(global.tablet_state == enum_tablet.off){
	
if(global.view_scene == enum_view_scene.hall){
	
	global.view_scene_state = enum_hall_state.empty_light_off;
	

}
else if(global.view_scene == enum_view_scene.left_shaft){
	
	global.view_scene_state = enum_left_shaft_state.empty;
	

}
else if(global.view_scene == enum_view_scene.right_door){
	
	global.view_scene_state = enum_right_door_state.right_door_is_open;
	

}

Update_screen();

}