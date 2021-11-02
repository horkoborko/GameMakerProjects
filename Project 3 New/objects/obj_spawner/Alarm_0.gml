/// @description Block Timer
// You can write your code in this editor
var lyr_instances = layer_get_id("Instances");

randomise();
var randNum = irandom(1000);

var objId;

if ( randNum % 2 == 0)
   {
	objId = instance_create_layer(x, y, lyr_instances, obj_up_block);  
   }
else
   {
	objId = instance_create_layer(x, y, lyr_instances, obj_down_block);
   }


objId.depth = depth - 1;
