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

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 67286C67
/// @DnDArgument : "room" "Room1"
/// @DnDSaveInfo : "room" "Room1"
room_goto(Room1);

/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 43FBE383
randomize();

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 6F772DD1
/// @DnDArgument : "var" "Start_"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "10"
/// @DnDArgument : "max" "100"
Start_ = floor(random_range(10, 100 + 1));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 340BD9D8
/// @DnDArgument : "steps" "Start_"
/// @DnDArgument : "alarm" "1"
alarm_set(1, Start_);

/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 17FEF804
randomize();

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 39A90726
/// @DnDArgument : "var" "go"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "3"
go = floor(random_range(0, 3 + 1));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6ABCEC01
/// @DnDArgument : "expr" "2"
/// @DnDArgument : "var" "st2"
st2 = 2;