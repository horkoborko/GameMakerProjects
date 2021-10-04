/// @description Insert description here
// You can write your code in this editor
var lyr_instances = layer_get_id("Instances");

var inst_arrow = instance_create_layer(x, y, lyr_instances, obj_arrow);

with (inst_arrow)
   {
    speed = 2;
	direction = point_direction(x, y, mouse_x, mouse_y);
	image_angle = direction;
   }