/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 48B11C23
/// @DnDApplyTo : {obj_Player}
/// @DnDArgument : "target" "myScore"
/// @DnDArgument : "target_temp" "1"
/// @DnDArgument : "instvar" "25"
with(obj_Player) {
var myScore = variable_instance_exists(id, "__dnd_score") ? __dnd_score : 0;
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 7E309785
/// @DnDArgument : "caption" ""Steps: ""
/// @DnDArgument : "var" "myScore"
draw_text(0, 0, string("Steps: ") + string(myScore));