/// @description Insert description here
// You can write your code in this editor
var screenScale=view_wport[0]/room_width;
var bubbleX=x*screenScale;
var bubbleY=y*screenScale;
var bubWidth=sprite_get_width(sprite_border)*xScale*screenScale;
var bubHeight=sprite_get_height(sprite_border)*yScale*screenScale;


var txt=string_copy(node.line,0,currentChar);
draw_sprite_ext(sprite_border,0,bubbleX,bubbleY,xScale*screenScale,yScale*screenScale,0,-1,1);
draw_set_font(font_coderscrux);
draw_text_ext_color(bubbleX-bubWidth/2+screenScale*15,bubbleY+screenScale*15-bubHeight/2,txt,screenScale*5,bubWidth,c_black,c_black,c_black,c_black,1);