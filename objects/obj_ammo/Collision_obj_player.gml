/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3EC33ADB
/// @DnDApplyTo : {obj_player}
/// @DnDArgument : "expr" "+20"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "ammo"
with(obj_player) {
ammo += +20;

}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 395C835E
instance_destroy();