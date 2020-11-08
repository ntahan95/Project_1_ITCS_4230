/// @DnDAction : YoYo Games.Common.Get_Global
/// @DnDVersion : 1
/// @DnDHash : 5CE57EB5
/// @DnDArgument : "output" "go"
/// @DnDArgument : "output_temp" "1"
/// @DnDArgument : "var" "game_over"
var go = global.game_over;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4197EEA3
/// @DnDArgument : "var" "go"
/// @DnDArgument : "value" "true"
if(go == true)
{
	/// @DnDAction : YoYo Games.Game.Restart_Game
	/// @DnDVersion : 1
	/// @DnDHash : 0ACBF9D5
	/// @DnDParent : 4197EEA3
	game_restart();
}