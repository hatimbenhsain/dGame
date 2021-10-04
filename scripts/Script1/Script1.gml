// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DestroyAnswers(){
	with(obj_gameManager){
		for(var i=0;i<array_length(answerBoxes);i++){
			instance_destroy(answerBoxes[i]);
		}
		answerBoxes=[];
	}
}