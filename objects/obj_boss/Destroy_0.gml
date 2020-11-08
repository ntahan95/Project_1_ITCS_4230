/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 73DA096A
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_flag"
/// @DnDSaveInfo : "objectid" "obj_flag"
instance_create_layer(x + 0, y + 0, "Instances", obj_flag);

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 3FE9C7C5
/// @DnDApplyTo : {obj_scoreboard}
/// @DnDArgument : "score" "1000"
with(obj_scoreboard) {

__dnd_score = real(1000);
}