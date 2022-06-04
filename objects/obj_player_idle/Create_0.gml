/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 4279D695
speed = 0;

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1A4EAA56
/// @DnDInput : 2
/// @DnDArgument : "funcName" "Move"
/// @DnDArgument : "arg" "horiz"
/// @DnDArgument : "arg_1" "vert"
function Move(horiz, vert) 
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7A3C1C1C
	/// @DnDParent : 1A4EAA56
	/// @DnDArgument : "var" "canWalk"
	/// @DnDArgument : "value" "true"
	var canWalk = true;

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 30544FB4
	/// @DnDParent : 1A4EAA56
	/// @DnDArgument : "x" "sprite_width * horiz"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "sprite_height * vert"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_Wall"
	/// @DnDSaveInfo : "object" "obj_Wall"
	var l30544FB4_0 = instance_place(x + sprite_width * horiz, y + sprite_height * vert, obj_Wall);
	if ((l30544FB4_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3456480C
		/// @DnDParent : 30544FB4
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "canWalk"
		canWalk = false;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 274A1A07
	/// @DnDParent : 1A4EAA56
	/// @DnDArgument : "x" "sprite_width * horiz"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "sprite_height * vert"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "target" "crate"
	/// @DnDArgument : "target_temp" "1"
	/// @DnDArgument : "object" "obj_Crate"
	/// @DnDSaveInfo : "object" "obj_Crate"
	var l274A1A07_0 = instance_place(x + sprite_width * horiz, y + sprite_height * vert, obj_Crate);
	var crate = l274A1A07_0;
	if ((l274A1A07_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4C28B236
		/// @DnDParent : 274A1A07
		/// @DnDArgument : "var" "canPush"
		/// @DnDArgument : "value" "true"
		var canPush = true;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4BEB7B0B
		/// @DnDParent : 274A1A07
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "canWalk"
		canWalk = false;
	
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 373A53B3
		/// @DnDParent : 274A1A07
		/// @DnDArgument : "x" "sprite_width * horiz * 2"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "sprite_height * vert * 2"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "obj_Crate"
		/// @DnDSaveInfo : "object" "obj_Crate"
		var l373A53B3_0 = instance_place(x + sprite_width * horiz * 2, y + sprite_height * vert * 2, obj_Crate);
		if ((l373A53B3_0 > 0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 197DA1B2
			/// @DnDParent : 373A53B3
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "canPush"
			canPush = false;
		}
	
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 527C1D26
		/// @DnDParent : 274A1A07
		/// @DnDArgument : "x" "sprite_width * horiz * 2"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "sprite_height * vert * 2"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "obj_Wall"
		/// @DnDSaveInfo : "object" "obj_Wall"
		var l527C1D26_0 = instance_place(x + sprite_width * horiz * 2, y + sprite_height * vert * 2, obj_Wall);
		if ((l527C1D26_0 > 0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 76634055
			/// @DnDParent : 527C1D26
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "canPush"
			canPush = false;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3B71E76D
		/// @DnDParent : 274A1A07
		/// @DnDArgument : "var" "canPush"
		/// @DnDArgument : "value" "true"
		if(canPush == true)
		{
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 743359BB
			/// @DnDApplyTo : crate
			/// @DnDParent : 3B71E76D
			with(crate) instance_destroy();
		
			/// @DnDAction : YoYo Games.Instances.Change_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 6F751FEC
			/// @DnDParent : 3B71E76D
			/// @DnDArgument : "objind" "push_state"
			instance_change(push_state, true);
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2CE7722F
	/// @DnDParent : 1A4EAA56
	/// @DnDArgument : "var" "canWalk"
	/// @DnDArgument : "value" "true"
	if(canWalk == true)
	{
		/// @DnDAction : YoYo Games.Instances.Change_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4B2C517E
		/// @DnDParent : 2CE7722F
		/// @DnDArgument : "objind" "walk_state"
		instance_change(walk_state, true);
	}
}