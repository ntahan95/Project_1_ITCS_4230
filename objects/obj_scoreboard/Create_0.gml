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
/// @DnDHash : 449AB173
/// @DnDArgument : "lives" "3"

__dnd_lives = real(3);

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 75396BA3

__dnd_score = real(0);