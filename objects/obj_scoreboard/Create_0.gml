/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 774CB207
/// @DnDArgument : "code" "instance_deactivate_object(obj_scoreboard)"
instance_deactivate_object(obj_scoreboard)

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 759C1EDA
/// @DnDArgument : "soundid" "sound_background"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "sound_background"
audio_play_sound(sound_background, 0, 1);

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 0350C88D
/// @DnDArgument : "value" "false"
/// @DnDArgument : "var" "game_over"
global.game_over = false;

/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 6D4C65E3
/// @DnDArgument : "lives" "3"

__dnd_lives = real(3);