/// @description Insert description here
// You can write your code in this editor

key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_up = keyboard_check_pressed(vk_space);

//THis is for the floor
var grounded = place_meeting( x, y + 1, obj_floor);
var grounded2 = place_meeting( x, y + 1, obj_halfFloor);
				

horizontal = ((key_right - key_left) * 3);
//gravity
vertical += .5;

if ( horizontal != 0 )
   {
	image_xscale = horizontal / 4;
   }

if (grounded || grounded2)
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
	    vertical = -12;
       }
   }
 
 if ( place_meeting( x + horizontal, y, obj_floor ))
{
	while( !place_meeting( x + sign(horizontal), y, obj_floor))
	{
		x += sign(horizontal);
	}
	horizontal = 0;
}



 if ( place_meeting( x + horizontal, y, obj_halfFloor ))
{
	while( !place_meeting( x + sign(horizontal), y, obj_halfFloor))
	{
		x += sign(horizontal);
	}
	horizontal = 0;
}

x += horizontal;

if ( place_meeting( x, y + vertical, obj_floor ))
{
	while( !place_meeting( x , y + sign(vertical), obj_floor))
	{
		y += sign(vertical);
	}
	
	vertical = 0;	
}

if ( place_meeting( x, y + vertical, obj_halfFloor ))
{
	while( !place_meeting( x , y + sign(vertical), obj_halfFloor))
	{
		y += sign(vertical);
	}
	
	vertical = 0;	
}
y += vertical;

