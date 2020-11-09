/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7FDFAC86
/// @DnDArgument : "code" "alarm[0] = random_range(spawnTime, spawnTime*2);$(13_10)//turned off until actually reaches boss room$(13_10)instance_deactivate_object(obj_spawner1);"
alarm[0] = random_range(spawnTime, spawnTime*2);
//turned off until actually reaches boss room
instance_deactivate_object(obj_spawner1);