/// @description Insert description here
// You can write your code in this editor
currentChar++;
currentChar=clamp(currentChar,0,string_length(node.line));

if(mouse_check_button_pressed(mb_left) && currentChar<string_length(node.line)){
	currentChar=string_length(node.line);
}else if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,id)){
	obj_gameManager.currentHead=node.next;
	var inst=instance_create_depth(x,y,depth,obj_lineBox);
	inst.node=node.next;
	DestroyAnswers();
}
