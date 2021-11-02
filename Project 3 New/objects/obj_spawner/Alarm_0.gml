/// @description Block Timer
// You can write your code in this editor
var lyr_instances = layer_get_id("Instances");

randomise();
var randNum = irandom_range(1,4)

var objId;

if ( randNum == 1)
   {
	objId = instance_create_layer(x, y, lyr_instances, obj_a_block);  
   }
else if (randNum == 2)
   {
	objId = instance_create_layer(x, y, lyr_instances, obj_d_block);
   }
else if (randNum == 3)
   {
	objId = instance_create_layer(x, y, lyr_instances, obj_w_block);
   }
else if (randNum == 4)
   {
	objId = instance_create_layer(x, y, lyr_instances, obj_s_block);
   }


objId.depth = depth - 1;
