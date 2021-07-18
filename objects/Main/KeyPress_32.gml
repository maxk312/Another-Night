/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1964BD90
/// @DnDArgument : "var" "global.hall_state"
if(global.hall_state == 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5F13A1F2
	/// @DnDParent : 1964BD90
	/// @DnDArgument : "spriteind" "spr_empty_hall_light"
	/// @DnDSaveInfo : "spriteind" "spr_empty_hall_light"
	sprite_index = spr_empty_hall_light;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 76F67E54
/// @DnDArgument : "soundid" "light"
/// @DnDSaveInfo : "soundid" "light"
audio_play_sound(light, 0, 0);