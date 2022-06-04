/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5F6FED50
/// @DnDArgument : "expr" "walk_speed"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "steps"
steps += walk_speed;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3D11BB0F
/// @DnDArgument : "var" "steps"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "move_distance"
if(steps >= move_distance)
{
	/// @DnDAction : YoYo Games.Movement.Snap_Position
	/// @DnDVersion : 1
	/// @DnDHash : 7721E036
	/// @DnDParent : 3D11BB0F
	/// @DnDArgument : "xsnap" "128"
	/// @DnDArgument : "ysnap" "128"
	move_snap(128, 128);

	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6FB47D49
	/// @DnDParent : 3D11BB0F
	/// @DnDArgument : "objind" "idle_asset"
	instance_change(idle_asset, true);
}