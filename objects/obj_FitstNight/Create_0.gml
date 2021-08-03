
global.view_scene = 1;
global.view_scene_state = 0;

global.tablet_state = 0;

global.bunny_state = 0; //0 = he is in out , 1 = he is in cam2 , 2 = he is in hall
global.chica_state = 0; //0 = cam1 , 1 = cam1 look , 2 = cam2 , 3 = cam3 , 4 = cam4 , 5 = left shaft
 
enum enum_game_vars{
game_speed = room_speed
}

//enemys_states
enum enum_bunny_state{
bunny_is_out = 0,	
bunny_is_on_cam2 = 1,	
bunny_is_in_hall = 2
}

enum enum_chica_state{
chica_is_on_cam1 = 0,
chica_is_looking_to_cam1 = 1,
chica_is_on_cam2 = 2,
chica_is_on_cam3 = 3,
chica_is_on_cam4 = 4,
chica_is_in_left_shaft = 5
}

//scenes enums
enum enum_view_scene{
left_shaft = 0,
hall = 1,
right_door = 2,
cam1 = 3,
cam2 = 4,
cam3 = 5,
cam4 = 6,
jump_scare = 7
}

enum enum_jump_scares{
chica_jump_scare = 0,
bunny_jump_scare = 1
}

enum enum_tablet{
on = 1,
off = 0
}

//scenes_states enums
enum enum_left_shaft_state{
empty = 0,
empty_light = 1,
chica = 2
}

enum enum_hall_state{
empty_light_off = 0,
empty_light_on = 1,
bunny_is_in_hall = 2
}

enum enum_right_door_state{
right_door_is_open = 0,
right_door_is_close = 1
}

enum enum_cam1_states{
empty = 0,
chica = 1,
chica_looking_on_cam = 2,
}

enum enum_cam2_states{
empty = 0,
chica = 1,
bunny = 2
}

enum enum_cam3_states{
empty = 0,
chica = 1,
}

enum enum_cam4_states{
empty = 0,
chica = 1,
}

function Update_screen() 
{
	switch(global.view_scene){
		case enum_view_scene.left_shaft:
			if(global.view_scene_state == enum_left_shaft_state.empty){
				sprite_index = spr_empty_left_shaft;
				image_index = 0;
				break;
			}
			else if(global.view_scene_state == enum_left_shaft_state.empty_light){
				sprite_index = spr_empty_left_shaft_light;
				image_index = 0;
				break;
			}
			else if(global.view_scene_state == enum_left_shaft_state.chica){
				sprite_index = spr_chica_left_shaft;
				image_index = 0;
				break;
			}
		case enum_view_scene.hall:
			if(global.view_scene_state == enum_hall_state.empty_light_off){
				sprite_index = spr_empty_hall;
				image_index = 0;
				break;
			}
			else if(global.view_scene_state == enum_hall_state.empty_light_on){
				sprite_index = spr_empty_hall_light;
				image_index = 0;
				break;
			}
			else if(global.view_scene_state == enum_hall_state.bunny_is_in_hall){
				sprite_index = spr_bunny_hall;
				image_index = 0;
				break;
			}
		case enum_view_scene.right_door:
		    if(global.view_scene_state == enum_right_door_state.right_door_is_open){
				sprite_index = spr_right_door_open;
				image_index = 0;
				break;
			}
			else if(global.view_scene_state == enum_right_door_state.right_door_is_close){
				sprite_index = spr_right_door_close;
				image_index = 0;
				break;
			}
		case enum_view_scene.cam1:
		    if(global.view_scene_state == enum_cam1_states.empty){
				sprite_index = spr_empty_cam1;
				image_index = 0;
				break;
			}
			else if(global.view_scene_state == enum_cam1_states.chica){
				sprite_index = spr_chica_cam1;
				image_index = 0;
				break;
			}
			else if(global.view_scene_state == enum_cam1_states.chica_looking_on_cam){
				sprite_index = spr_chica_look_cam1;
				image_index = 0;
				break;
			}
		case enum_view_scene.cam2:
		    if(global.view_scene_state == enum_cam2_states.empty){
				sprite_index = spr_empty_cam2;
				image_index = 0;
				break;
			}
			else if(global.view_scene_state == enum_cam2_states.chica){
				sprite_index = spr_chica_cam2;
				image_index = 0;
				break;
			}
			else if(global.view_scene_state == enum_cam2_states.bunny){
				sprite_index = spr_bunny_cam2;
				image_index = 0;
				break;
			}
		case enum_view_scene.cam3:
			if(global.view_scene_state == enum_cam3_states.empty){
				sprite_index = spr_empty_cam3;
				image_index = 0;
				break;
			}
			else if(global.view_scene_state == enum_cam3_states.chica){
				sprite_index = spr_chica_cam3;
				image_index = 0;
				break;
			}
		case enum_view_scene.cam4:
			if(global.view_scene_state == enum_cam4_states.empty){
				sprite_index = spr_empty_cam4;
				image_index = 0;
				break;
			}
			else if(global.view_scene_state == enum_cam4_states.chica){
				sprite_index = spr_chica_cam4;
				image_index = 0;
				break;
			}	
		case enum_view_scene.jump_scare:
			if(global.view_scene_state == enum_jump_scares.chica_jump_scare){
				sprite_index = spr_chica_jump_scare;
				image_index = 0;
				break;
			}
			else if(global.view_scene_state == enum_jump_scares.bunny_jump_scare){
				sprite_index = spr_bunny_jumpscare;
				image_index = 0;
				break;
			}	
	}
}

function SetTimeOfNextEnemyActivity(){
	min = 10;
	max = 30;
	r = (random_range(min, max));
	timer = r * enum_game_vars.game_speed;
	alarm_set(0, timer);
}