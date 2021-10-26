/// @description Insert description here
// You can write your code in this editor
// The boxes will move on a straight line "through" screen


if (point_distance(x, y, x, 415) > 3)
   {
	move_towards_point(x, 415, 3);
	image_xscale += .012;
	image_yscale += .012;
   }
else
   {
	speed = 0;
	keepMaking = false;
   }