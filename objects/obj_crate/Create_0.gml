/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 14877AEC
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_Crate_Spot"
/// @DnDSaveInfo : "object" "obj_Crate_Spot"
var l14877AEC_0 = instance_place(x + 0, y + 0, obj_Crate_Spot);
if ((l14877AEC_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 047ADBFB
	/// @DnDParent : 14877AEC
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "isReady"
	isReady = true;
}