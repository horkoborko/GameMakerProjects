/// @description Insert description here
// You can write your code in this editor



if ( obj_rat.y <= 128 && obj_rat.y >= 106 && obj_rat.x <= 275 && obj_rat.x >= 263)
   {
	image_xscale = -.5;  
   }
else if (( obj_rat.y <= 126 && obj_rat.y >= 97 && obj_rat.x <= 510 && obj_rat.x >= 492))
   {
	 image_xscale = .5;   
   }



 if( ! place_meeting(x, y, obj_player_front) ) {
    collide = false;
}