if (frozen == false)
    siner += 1
msin = (sin((siner / 9)) * 2)
ysin = (cos((siner / 8)) * 1)
growth = (sin((siner / 7)) * 0.012)
msin2 = (sin((siner / 10)) * 1.5)
ysin2 = (cos((siner / 9)) * 0.8)
growth2 = (sin((siner / 8)) * 0.01)
msin3 = (sin((siner / 11)) * 1)
ysin3 = (cos((siner / 10)) * 0.5)
growth3 = (sin((siner / 9)) * 0.005)
blend3 = merge_color(image_blend, c_black, 0.4)
draw_sprite_ext(sprite_index, image_index, (x + ((msin3 - 60) * image_xscale)), ((y + ysin3) - 20), (growth3 + image_xscale), 1, 0, blend3, 1)
draw_sprite_ext(sprite_index, image_index, (x + ((msin2 - 40) * image_xscale)), ((y + ysin2) - 10), (growth2 + image_xscale), 1, 0, blend3, 1)
draw_sprite_ext(sprite_index, image_index, (x + (msin * image_xscale)), (y + ysin), (growth + image_xscale), 1, 0, image_blend, 1)
