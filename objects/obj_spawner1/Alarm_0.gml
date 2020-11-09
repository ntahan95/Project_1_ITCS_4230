/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6845747E
/// @DnDArgument : "code" "alarm[0] = random_range(spawnTime, spawnTime*2)$(13_10)instance_create_layer(x, y, "Instances", objectType);"
alarm[0] = random_range(spawnTime, spawnTime*2)
instance_create_layer(x, y, "Instances", objectType);