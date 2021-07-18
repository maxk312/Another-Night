/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3C18EA17
/// @DnDArgument : "var" "global.view_scene"
/// @DnDArgument : "value" "1"
if(global.view_scene == 1)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 0BADF3CD
	/// @DnDParent : 3C18EA17
	/// @DnDArgument : "var" "global.view_scene"
	global.view_scene = 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 50422FB5
else
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 77545882
	/// @DnDParent : 50422FB5
	/// @DnDArgument : "var" "global.view_scene"
	global.view_scene = 0;
}

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 5B6CA2F5
/// @DnDArgument : "room" "Room5"
/// @DnDSaveInfo : "room" "Room5"
room_goto(Room5);