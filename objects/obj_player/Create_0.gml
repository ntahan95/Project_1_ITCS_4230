/// @DnDAction : YoYo Games.Movement.Set_Gravity_Direction
/// @DnDVersion : 1
/// @DnDHash : 2F68F485
/// @DnDArgument : "direction" "270"
gravity_direction = 270;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 678B7763
/// @DnDArgument : "code" "//list that holds what gun's player has$(13_10)gunInventory = ds_list_create()$(13_10)//check for what gun is CURRENTLY being held$(13_10)gunHeld = "none"$(13_10)//check for gun$(13_10)hasGun = false$(13_10)//var for gun cycling$(13_10)check = -1$(13_10)$(13_10)/*this is here because cycling between guns changes$(13_10)the sprite, its a bit archaic so it can be changed$(13_10)later probably*/$(13_10)image_speed = 0"
//list that holds what gun's player has
gunInventory = ds_list_create()
//check for what gun is CURRENTLY being held
gunHeld = "none"
//check for gun
hasGun = false
//var for gun cycling
check = -1

/*this is here because cycling between guns changes
the sprite, its a bit archaic so it can be changed
later probably*/
image_speed = 0/**/