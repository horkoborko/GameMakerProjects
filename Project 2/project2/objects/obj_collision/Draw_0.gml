/// @description Insert description here
// You can write your code in this editor
for (var yy = 0; yy < vcells; yy++){
	for (var xx = 0; xx < hcells; xx++){
		draw_text(xx * 32, yy * 32, string(a_grid[xx, yy]));
	}
}