/// @description Insert description here
// You can write your code in this editor
// Dealing with collision timing
if (point_distance(x, y, x, 415) < 100)
   {
	canCollide = true;
   }

// The boxes will move on a straight line "through" screen
if (point_distance(x, y, x, 415) > 2)
   {
	move_towards_point(x, 415, 2);
	image_xscale += .01;
	image_yscale += .01;
   }
else
   {
	// Can track if player missed the block here
	instance_destroy();
	speed = 0;
   }