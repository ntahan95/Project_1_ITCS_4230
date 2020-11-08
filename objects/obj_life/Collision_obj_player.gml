/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 45131451
/// @DnDApplyTo : {obj_scoreboard}
/// @DnDArgument : "lives" "1"
/// @DnDArgument : "lives_relative" "1"
with(obj_scoreboard) {
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
__dnd_lives += real(1);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 6E4750F7
instance_destroy();