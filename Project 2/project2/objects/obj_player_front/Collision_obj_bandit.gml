/// @description Insert description here
// You can write your code in this editor

if (obj_player_front.sprite_index == spr_player_front || 
                     obj_player_front.sprite_index == spr_player_front_static )
   {
	y -= 1;
   }

if (obj_player_front.sprite_index == spr_player_back || 
                     obj_player_front.sprite_index == spr_player_back_static )
   {
	y += 1;
   }

if (obj_player_front.sprite_index == spr_player_side || 
                     obj_player_front.sprite_index == spr_player_side_static )
   {
	x -= 1;
   }

if (obj_player_front.sprite_index == spr_player_left_side || 
                     obj_player_front.sprite_index == spr_player_left_slide_static )
   {
	x += 1;
   }