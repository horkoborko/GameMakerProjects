/// @description Insert description here
// You can write your code in this editor


// The boxes will move on a straight line "through" screen
if (point_distance(x, y, x, 415) > 1.75)
   {
	move_towards_point(x, 415, 1.75);
	image_xscale += .01;
	image_yscale += .01;
   }
else
   {
	// Can track if player missed the block here
	instance_destroy();
	speed = 0;
   }