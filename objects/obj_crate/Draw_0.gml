/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5381C02E
/// @DnDArgument : "var" "isReady"
/// @DnDArgument : "value" "true"
if(isReady == true)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0E5569DE
	/// @DnDParent : 5381C02E
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "spr_Crate_Ready"
	/// @DnDSaveInfo : "sprite" "spr_Crate_Ready"
	draw_sprite(spr_Crate_Ready, 0, x + 0, y + 0);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1738E1A6
else
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7EAF92AA
	/// @DnDParent : 1738E1A6
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "spr_Crate"
	/// @DnDSaveInfo : "sprite" "spr_Crate"
	draw_sprite(spr_Crate, 0, x + 0, y + 0);
}