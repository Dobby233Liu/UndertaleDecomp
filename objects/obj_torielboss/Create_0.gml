scr_monstersetup(0, 0, 0, 0, 0)
tt = 0
hurtanim = 0
hurtsound = snd_damage
talked = false
whatiheard = -1
attacked = 0
killed = 0
iwilltalk = 0
global.heard = 0
takedamage = 0
outside = 0
image_xscale = 2
image_yscale = 2
mercymod = -20000
image_speed = 0
global.seriousbattle = 1
obj_battlebg.image_index = 1
hplastturn = global.monsterhp[myself]
conversation = 0
destroyed = 0
sideface = 0
ht = sprite_height
wd = sprite_width
if (scr_murderlv() >= 1)
    global.monsterdef[myself] = -9999
