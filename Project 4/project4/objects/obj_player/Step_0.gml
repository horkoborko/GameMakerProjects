/// @description Insert description here
// You can write your code in this editor

key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));

horizontal = ((key_right - key_left) * 3);
vertical = ((key_down - key_up) * 3);

var hit = 0;
hit += tilemap_get_at_pixel(collision_tilemap,
					bbox_left,
					bbox_top);
hit += tilemap_get_at_pixel(collision_tilemap,
					bbox_right,
					bbox_top);
hit += tilemap_get_at_pixel(collision_tilemap,
					bbox_left,
					bbox_bottom);
hit += tilemap_get_at_pixel(collision_tilemap,
					bbox_right,
					bbox_bottom);	
				
if (hit > 0) 
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