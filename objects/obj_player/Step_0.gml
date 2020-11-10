/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5EA1BEC6
/// @DnDArgument : "code" "//if the player has a gun in the list, they hasGun$(13_10)if (ds_list_size(gunInventory) > 0){$(13_10)	hasGun = true;$(13_10)}$(13_10)//otherwise they dont $(13_10)else$(13_10){$(13_10)	hasGun = false;$(13_10)}"
//if the player has a gun in the list, they hasGun
if (ds_list_size(gunInventory) > 0){
	hasGun = true;
}
//otherwise they dont 
else
{
	hasGun = false;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 09AD72EA
/// @DnDArgument : "key" "vk_left"
var l09AD72EA_0;
l09AD72EA_0 = keyboard_check(vk_left);
if (l09AD72EA_0)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 008677F0
	/// @DnDParent : 09AD72EA
	/// @DnDArgument : "x" "-move_speed"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_block"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "obj_block"
	var l008677F0_0 = instance_place(x + -move_speed, y + 0, obj_block);
	if (!(l008677F0_0 > 0))
	{
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 7513EE12
		/// @DnDParent : 008677F0
		/// @DnDArgument : "x" "-move_speed"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "obj_bossDoor"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "object" "obj_bossDoor"
		var l7513EE12_0 = instance_place(x + -move_speed, y + 0, obj_bossDoor);
		if (!(l7513EE12_0 > 0))
		{
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 475D06D9
			/// @DnDParent : 7513EE12
			/// @DnDArgument : "x" "-move_speed"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "0"
			/// @DnDArgument : "y_relative" "1"
			x += -move_speed;
			y += 0;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2AD68E13
			/// @DnDParent : 7513EE12
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "var" "image_xscale"
			image_xscale = -1;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 723C6E9F
			/// @DnDParent : 7513EE12
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "face_left"
			face_left = true;
		}
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 4AC8282E
/// @DnDArgument : "key" "vk_right"
var l4AC8282E_0;
l4AC8282E_0 = keyboard_check(vk_right);
if (l4AC8282E_0)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 49380A0F
	/// @DnDParent : 4AC8282E
	/// @DnDArgument : "x" "move_speed"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_block"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "obj_block"
	var l49380A0F_0 = instance_place(x + move_speed, y + 0, obj_block);
	if (!(l49380A0F_0 > 0))
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 2CA0E4EF
		/// @DnDParent : 49380A0F
		/// @DnDArgument : "x" "move_speed"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "0"
		/// @DnDArgument : "y_relative" "1"
		x += move_speed;
		y += 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1DA97D5B
		/// @DnDParent : 49380A0F
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "image_xscale"
		image_xscale = 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3FE37521
		/// @DnDParent : 49380A0F
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "face_left"
		face_left = false;
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 1C164A59
/// @DnDArgument : "key" "ord("Z")"
var l1C164A59_0;
l1C164A59_0 = keyboard_check(ord("Z"));
if (l1C164A59_0)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 6B10050D
	/// @DnDParent : 1C164A59
	/// @DnDArgument : "x" "x"
	/// @DnDArgument : "y" "y+1"
	/// @DnDArgument : "object" "obj_block"
	/// @DnDSaveInfo : "object" "obj_block"
	var l6B10050D_0 = instance_place(x, y+1, obj_block);
	if ((l6B10050D_0 > 0))
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 4CF0AF16
		/// @DnDParent : 6B10050D
		/// @DnDArgument : "speed" "jump_height"
		/// @DnDArgument : "type" "2"
		vspeed = jump_height;
	}
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 6DEC87AF
/// @DnDArgument : "x" "x"
/// @DnDArgument : "y" "y+1"
/// @DnDArgument : "object" "obj_block"
/// @DnDSaveInfo : "object" "obj_block"
var l6DEC87AF_0 = instance_place(x, y+1, obj_block);
if ((l6DEC87AF_0 > 0))
{
	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
	/// @DnDVersion : 1
	/// @DnDHash : 43FB30B0
	/// @DnDParent : 6DEC87AF
	/// @DnDArgument : "force" "0"
	gravity = 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 576D064F
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
	/// @DnDVersion : 1
	/// @DnDHash : 78A14DD6
	/// @DnDParent : 576D064F
	/// @DnDArgument : "force" ".5"
	gravity = .5;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6CD9818C
/// @DnDArgument : "var" "vspeed"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "12"
if(vspeed > 12)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 7FECAA22
	/// @DnDParent : 6CD9818C
	/// @DnDArgument : "speed" "12"
	/// @DnDArgument : "type" "2"
	vspeed = 12;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 27D9D19D
/// @DnDArgument : "key" "ord("X")"
var l27D9D19D_0;
l27D9D19D_0 = keyboard_check(ord("X"));
if (l27D9D19D_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 37EEC4B3
	/// @DnDParent : 27D9D19D
	/// @DnDArgument : "var" "can_shoot"
	/// @DnDArgument : "value" "true"
	if(can_shoot == true)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 28D0245F
		/// @DnDParent : 37EEC4B3
		/// @DnDArgument : "var" "ammo"
		/// @DnDArgument : "op" "2"
		if(ammo > 0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 2A48D3DE
			/// @DnDParent : 28D0245F
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_bullet"
			/// @DnDSaveInfo : "objectid" "obj_bullet"
			instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4F207B6F
			/// @DnDParent : 28D0245F
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "ammo"
			ammo += -1;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4780D344
			/// @DnDParent : 28D0245F
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "can_shoot"
			can_shoot = false;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 03A0F551
			/// @DnDParent : 28D0245F
			/// @DnDArgument : "steps" "room_speed / 4"
			alarm_set(0, room_speed / 4);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 3B5A07B3
		/// @DnDParent : 37EEC4B3
		else
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 5E462714
			/// @DnDParent : 3B5A07B3
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_bullet"
			/// @DnDSaveInfo : "objectid" "obj_bullet"
			instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 757B62DB
			/// @DnDParent : 3B5A07B3
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "can_shoot"
			can_shoot = false;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 102F2DEA
			/// @DnDParent : 3B5A07B3
			/// @DnDArgument : "steps" "room_speed / 2"
			alarm_set(0, room_speed / 2);
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2971E527
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 595CEA1F
	/// @DnDParent : 2971E527
	instance_destroy();
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 7BCC2C8B
/// @DnDArgument : "key" "vk_down"
var l7BCC2C8B_0;
l7BCC2C8B_0 = keyboard_check(vk_down);
if (l7BCC2C8B_0)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 6C8A07B3
	/// @DnDParent : 7BCC2C8B
	/// @DnDArgument : "obj" "obj_npc"
	/// @DnDSaveInfo : "obj" "obj_npc"
	var l6C8A07B3_0 = false;
	l6C8A07B3_0 = instance_exists(obj_npc);
	if(l6C8A07B3_0)
	{
		/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
		/// @DnDVersion : 1
		/// @DnDHash : 04ECAA70
		/// @DnDParent : 6C8A07B3
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "obj" "obj_npc"
		/// @DnDArgument : "notme" "0"
		/// @DnDSaveInfo : "obj" "obj_npc"
		var l04ECAA70_0 = collision_point(x + 0, y + 0, obj_npc, true, 0);
		if((l04ECAA70_0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0C9BB56A
			/// @DnDParent : 04ECAA70
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "talking"
			talking = true;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 09DAF440
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1FC22337
	/// @DnDParent : 09DAF440
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "talking"
	talking = false;
}