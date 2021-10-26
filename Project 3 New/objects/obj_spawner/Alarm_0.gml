/// @description Block Timer
// You can write your code in this editor
var lyr_instances = layer_get_id("Instances");

randomise();
var randNum = irandom(1000);

if ( randNum % 2 == 0)
   {
	instance_create_layer(x, y, lyr_instances, obj_up_block);   
   }
else
   {
	instance_create_layer(x, y, lyr_instances, obj_down_block);
   }

