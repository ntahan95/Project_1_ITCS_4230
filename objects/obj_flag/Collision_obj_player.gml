/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0CAE0C57
/// @DnDArgument : "code" "//turns off spawner for next room$(13_10)instance_deactivate_object(obj_spawner1);"
//turns off spawner for next room
instance_deactivate_object(obj_spawner1);

/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 3ECA7EBE
/// @DnDApplyTo : {obj_scoreboard}
/// @DnDArgument : "lives" "+1"
/// @DnDArgument : "lives_relative" "1"
with(obj_scoreboard) {
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
__dnd_lives += real(+1);
}

/// @DnDAction : YoYo Games.Rooms.Next_Room
/// @DnDVersion : 1
/// @DnDHash : 33976F92
room_goto_next();