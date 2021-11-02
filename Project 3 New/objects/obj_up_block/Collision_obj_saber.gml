/// @description Insert description here
//game3particles emitter positions. Streaming or Bursting Particles.
var xp, yp;
xp = x;
yp = y;
part_emitter_region(global.ps, global.pe_Effect1, xp-3, xp+3, yp-3, yp+3, ps_shape_line, ps_distr_linear);
part_emitter_burst(global.ps, global.pe_Effect1, global.pt_Effect1, 10);
instance_destroy();