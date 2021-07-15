/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0747B5C9
/// @DnDArgument : "var" "st2"
/// @DnDArgument : "value" "2"
if(st2 == 2)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 5C17F4CD
	/// @DnDParent : 0747B5C9
	/// @DnDArgument : "room" "Room7"
	/// @DnDSaveInfo : "room" "Room7"
	room_goto(Room7);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7F46D5ED
/// @DnDArgument : "var" "st2"
/// @DnDArgument : "value" "1"
if(st2 == 1)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 31468BFD
	/// @DnDParent : 7F46D5ED
	/// @DnDArgument : "room" "Room6"
	/// @DnDSaveInfo : "room" "Room6"
	room_goto(Room6);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 488CBDB0
/// @DnDArgument : "var" "st2"
/// @DnDArgument : "value" "3"
if(st2 == 3)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 6B89969F
	/// @DnDParent : 488CBDB0
	/// @DnDArgument : "soundid" "she_will_catch_you"
	/// @DnDSaveInfo : "soundid" "she_will_catch_you"
	audio_play_sound(she_will_catch_you, 0, 0);
}