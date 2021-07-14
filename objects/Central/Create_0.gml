/// @DnDAction : YoYo Games.Miscellaneous.Set_Window_State
/// @DnDVersion : 1
/// @DnDHash : 52065D2D
/// @DnDArgument : "type" "2"
window_set_fullscreen(true);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 556A304C
/// @DnDArgument : "soundid" "Factory_Background"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "Factory_Background"
audio_play_sound(Factory_Background, 0, 1);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 3FB5EBA3
/// @DnDArgument : "soundid" "fan"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "fan"
audio_play_sound(fan, 0, 1);