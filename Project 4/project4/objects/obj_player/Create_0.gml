/// @description Insert description here
// You can write your code in this editor
horizontal = 0;
vertical = 0;
coins = 0;

collision_layer = layer_get_id("Floor_Collision");
collision_tilemap = layer_tilemap_get_id(collision_layer);

collision_layer2 = layer_get_id("Clouds");
cloud_tilemap = layer_tilemap_get_id(collision_layer2);

instance_layer = layer_get_id("Instances");