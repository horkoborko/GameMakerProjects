audio_stop_sound(sound_title_theme);

audio_play_sound(sound_main_theme, 10, true);

/// Create forest

var lyr_instances = layer_get_id("Instances");

var x_index, y_index;

for ( x_index = 222; x_index < 510; x_index += 30)
   {
	for ( y_index = 0; x_index < 63; x_index += 5 )
       {
	    instance_create_layer(x_index, y_index, lyr_instances, obj_tree);
       }   
   }