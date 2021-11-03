/// @description Insert description here
// You can write your code in this editor
var xp, yp;
xp = x;
yp = y;

// Check if the object is close enough to the region object
if ( y >= 300 && y <= 352 )    
   {
	//We can increase userscore here
	audio_play_sound(snd_hit, 8, false);
	part_emitter_region(global.ps, global.pe_Effect1, xp-3, xp+3, yp-3, yp+3, ps_shape_line, ps_distr_linear);
	part_emitter_burst(global.ps, global.pe_Effect1, global.pt_Effect1, 10);
	instance_destroy();
	global.userScore += 50;
   }