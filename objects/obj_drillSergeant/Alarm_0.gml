/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 625A73D6
/// @DnDArgument : "expr" "next_move"
var l625A73D6_0 = next_move;
switch(l625A73D6_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 6F0D080D
	/// @DnDParent : 625A73D6
	case 0:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 33A9994C
		/// @DnDInput : 4
		/// @DnDParent : 6F0D080D
		/// @DnDArgument : "expr" "25"
		/// @DnDArgument : "expr_1" "false"
		/// @DnDArgument : "expr_2" "false"
		/// @DnDArgument : "expr_3" "true"
		/// @DnDArgument : "var" "collision_damage"
		/// @DnDArgument : "var_1" "charge_attack"
		/// @DnDArgument : "var_2" "laser_fired"
		/// @DnDArgument : "var_3" "can_shoot"
		collision_damage = 25;
		charge_attack = false;
		laser_fired = false;
		can_shoot = true;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2C96650B
		/// @DnDInput : 5
		/// @DnDParent : 6F0D080D
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "expr_1" "false"
		/// @DnDArgument : "expr_2" "false"
		/// @DnDArgument : "expr_3" "false"
		/// @DnDArgument : "expr_4" "false"
		/// @DnDArgument : "var" "idling"
		/// @DnDArgument : "var_1" "shooting"
		/// @DnDArgument : "var_2" "charging"
		/// @DnDArgument : "var_3" "spawning"
		/// @DnDArgument : "var_4" "laser"
		idling = true;
		shooting = false;
		charging = false;
		spawning = false;
		laser = false;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 370F275B
	/// @DnDParent : 625A73D6
	/// @DnDArgument : "const" "1"
	case 1:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1FDEF2F5
		/// @DnDInput : 5
		/// @DnDParent : 370F275B
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "expr_1" "true"
		/// @DnDArgument : "expr_2" "false"
		/// @DnDArgument : "expr_3" "false"
		/// @DnDArgument : "expr_4" "false"
		/// @DnDArgument : "var" "idling"
		/// @DnDArgument : "var_1" "shooting"
		/// @DnDArgument : "var_2" "charging"
		/// @DnDArgument : "var_3" "spawning"
		/// @DnDArgument : "var_4" "laser"
		idling = false;
		shooting = true;
		charging = false;
		spawning = false;
		laser = false;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 61C37421
	/// @DnDParent : 625A73D6
	/// @DnDArgument : "const" "2"
	case 2:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1D92B3DC
		/// @DnDInput : 5
		/// @DnDParent : 61C37421
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "expr_1" "false"
		/// @DnDArgument : "expr_2" "true"
		/// @DnDArgument : "expr_3" "false"
		/// @DnDArgument : "expr_4" "false"
		/// @DnDArgument : "var" "idling"
		/// @DnDArgument : "var_1" "shooting"
		/// @DnDArgument : "var_2" "charging"
		/// @DnDArgument : "var_3" "spawning"
		/// @DnDArgument : "var_4" "laser"
		idling = false;
		shooting = false;
		charging = true;
		spawning = false;
		laser = false;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 623B5433
	/// @DnDParent : 625A73D6
	/// @DnDArgument : "const" "3"
	case 3:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6360F799
		/// @DnDInput : 5
		/// @DnDParent : 623B5433
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "expr_1" "false"
		/// @DnDArgument : "expr_2" "false"
		/// @DnDArgument : "expr_3" "false"
		/// @DnDArgument : "expr_4" "true"
		/// @DnDArgument : "var" "idling"
		/// @DnDArgument : "var_1" "shooting"
		/// @DnDArgument : "var_2" "charging"
		/// @DnDArgument : "var_3" "spawning"
		/// @DnDArgument : "var_4" "laser"
		idling = false;
		shooting = false;
		charging = false;
		spawning = false;
		laser = true;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 3C728632
	/// @DnDParent : 625A73D6
	/// @DnDArgument : "const" "4"
	case 4:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6D2BC6B3
		/// @DnDInput : 5
		/// @DnDParent : 3C728632
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "expr_1" "false"
		/// @DnDArgument : "expr_2" "false"
		/// @DnDArgument : "expr_3" "true"
		/// @DnDArgument : "expr_4" "false"
		/// @DnDArgument : "var" "idling"
		/// @DnDArgument : "var_1" "shooting"
		/// @DnDArgument : "var_2" "charging"
		/// @DnDArgument : "var_3" "spawning"
		/// @DnDArgument : "var_4" "laser"
		idling = false;
		shooting = false;
		charging = false;
		spawning = true;
		laser = false;
		break;

	/// @DnDAction : YoYo Games.Switch.Default
	/// @DnDVersion : 1
	/// @DnDHash : 7B4948D2
	/// @DnDParent : 625A73D6
	default:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 71C374BC
		/// @DnDInput : 4
		/// @DnDParent : 7B4948D2
		/// @DnDArgument : "expr" "25"
		/// @DnDArgument : "expr_1" "false"
		/// @DnDArgument : "expr_2" "false"
		/// @DnDArgument : "expr_3" "true"
		/// @DnDArgument : "var" "collision_damage"
		/// @DnDArgument : "var_1" "charge_attack"
		/// @DnDArgument : "var_2" "laser_fired"
		/// @DnDArgument : "var_3" "can_shoot"
		collision_damage = 25;
		charge_attack = false;
		laser_fired = false;
		can_shoot = true;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 13AC7777
		/// @DnDInput : 5
		/// @DnDParent : 7B4948D2
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "expr_1" "false"
		/// @DnDArgument : "expr_2" "false"
		/// @DnDArgument : "expr_3" "false"
		/// @DnDArgument : "expr_4" "false"
		/// @DnDArgument : "var" "idling"
		/// @DnDArgument : "var_1" "shooting"
		/// @DnDArgument : "var_2" "charging"
		/// @DnDArgument : "var_3" "spawning"
		/// @DnDArgument : "var_4" "laser"
		idling = true;
		shooting = false;
		charging = false;
		spawning = false;
		laser = false;
		break;
}