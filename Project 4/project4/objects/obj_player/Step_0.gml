/// @description Insert description here
// You can write your code in this editor

key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_up = keyboard_check_pressed(vk_space);

//THis is for cloud collision
var grounded = 0;
var hitHead = 0;

hitHead += tilemap_get_at_pixel(cloud_tilemap,
					bbox_left,
					bbox_top);
hitHead += tilemap_get_at_pixel(cloud_tilemap,
					bbox_right,
					bbox_top);
grounded += tilemap_get_at_pixel(cloud_tilemap,
					bbox_left,
					bbox_bottom);
grounded += tilemap_get_at_pixel(cloud_tilemap,
					bbox_right,
					bbox_bottom);	
					
///This is for floor collision 
var hit = 0;

hit += tilemap_get_at_pixel(collision_tilemap,
					bbox_left,
					bbox_bottom);
hit += tilemap_get_at_pixel(collision_tilemap,
					bbox_right,
					bbox_bottom);
// Floor 

//cloud stuff

horizontal = ((key_right - key_left) * 3);
//gravity
vertical += .4;

if ( horizontal != 0 )
   {
	image_xscale = horizontal / 4;
   }

if (grounded)
   {
    if (horizontal != 0)
	   {
		sprite_index = spr_walking;
	   }
	else
	   {
		//Replace with idle animation
		sprite_index = spr_player_static;
	   }
	   
	if (key_up)
       {
	    vertical = -10;
       }
   }



///This is for floor collision 	
				
if (hit > 0 || grounded > 0) 
   {
	//On Floor 
	if ( vertical < 0)
	   {
		y += vertical;
	   }
   } 
else 
   {
	y += vertical;
   }

x += horizontal;
////END OF FLOOR STUFF