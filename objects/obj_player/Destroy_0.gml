/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 7DCDE830
/// @DnDArgument : "soundid" "sound_playerDeath"
audio_play_sound(sound_playerDeath, 0, 0);

/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 50A73549
/// @DnDApplyTo : {obj_scoreboard}
/// @DnDArgument : "lives" "-1"
/// @DnDArgument : "lives_relative" "1"
with(obj_scoreboard) {
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
__dnd_lives += real(-1);
}

/// @DnDAction : YoYo Games.Instance Variables.If_Lives
/// @DnDVersion : 1
/// @DnDHash : 10458FC8
/// @DnDApplyTo : {obj_scoreboard}
/// @DnDArgument : "op" "2"
with(obj_scoreboard) {
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
var l10458FC8_0 = __dnd_lives > 0;
}
if(l10458FC8_0)
{
	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 74CBD1A4
	/// @DnDParent : 10458FC8
	room_restart();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4A26B66D
else
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 0AF4901A
	/// @DnDParent : 4A26B66D
	/// @DnDArgument : "value" "true"
	/// @DnDArgument : "var" "game_over"
	global.game_over = true;
}