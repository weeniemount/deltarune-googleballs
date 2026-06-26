draw_sprite_ext(sprite_index, image_index, x, y + fakey, image_xscale, image_yscale, _angle, image_blend, 1);
var scale = clamp(abs(fakey) / 16, 1, 2);
draw_sprite_ext(spr_seth_shadow, 0, x, y + 6, scale, scale, 0, c_black, abs(fakey) / 64);
