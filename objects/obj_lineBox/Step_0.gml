/// @description Insert description here
// You can write your code in this editor
currentChar++;
currentChar=clamp(currentChar,0,string_length(node.line));

if(node.speaker=="dad") x=250;
else x=400;

if(!isCurrent){
	y-=moveSpeed*room_speed;
	if(y<-room_height/2){
		instance_destroy(id);
	}
}

if(keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left)){
	if(currentChar<string_length(node.line)){
		currentChar=string_length(node.line);
	}else if(is_array(node.next)){
		
	}else{
		obj_gameManager.currentHead=node.next;
		if(obj_gameManager.currentHead!=""){
			var inst=instance_create_depth(x,y,depth,obj_lineBox);
			inst.node=node.next;
		}
		isCurrent=false;
		if(obj_gameManager.currentHead!="" && is_array(inst.node.next)){
			show_debug_message("a question");
			for(var i=0;i<array_length(inst.node.next);i++){
				var xx=room_width*(i+1)/(array_length(inst.node.next)+1);
				var a=instance_create_depth(xx,y,depth,obj_answerBox);
				a.node=inst.node.next[i];
				array_push(obj_gameManager.answerBoxes,a);
			}
		}
	}
}