/// @description Insert description here
// You can write your code in this editor

tuner=instance_find(obj_tuning,0);
skies=[];

var d=0;
for(var i=0;i<array_length(tuner.skySprites);i++){
	var s=instance_create_depth(room_width/2,room_height/2,-i,obj_sky);
	s.sprite_index=tuner.skySprites[i];
	s.spd=tuner.skySpeeds[i];
	d=-i;
}

d=d-1;
instance_create_depth(room_width/2,room_height/2,d,obj_road);
d=d-1;
instance_create_depth(room_width/2,room_height/2,d,obj_insideCar);
d=d-1;
instance_create_depth(room_width/2,room_height/2,d,obj_radio);
d=d-1;
instance_create_depth(room_width/2,room_height/2,d,obj_passengers);
d=d-1;
instance_create_depth(room_width/2,room_height/2,d,obj_seats);

audio_play_sound(snd_drivingSound,1,true);

l5={
	line:"ok...",
	speaker:"dad",
	isAnswer:false,
	next:""
}

l3={
	line:"yeah we are",
	speaker:"me",
	isAnswer:false,
	next:l5
}

l4={
	line:"no we're not",
	speaker:"me",
	isAnswer:false,
	next:l5
}

a1={
	line:"yeah we are",
	speaker:"me",
	isAnswer:true,
	next:l3
}

a2={
	line:"no we're not",
	speaker:"me",
	isAnswer:true,
	next:l4
}

l2={
	line:"we are driving on the road",
	speaker:"dad",
	isAnswer:false,
	next:[a1,a2]
}

l1={
	line:"so...",
	speaker:"dad",
	isAnswer:false,
	next:l2
}

currentHead=l1;

dadBubble=[250,100];
meBubble=[400,100];

currentChar=0;

answerBoxes=[];

var inst=instance_create_depth(x,y,depth,obj_lineBox);
inst.node=currentHead;
