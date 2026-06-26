fakeinit--;
var hours_wasted_because_of_tobys_code = 1;
var toby_fox_literally_why_would_you_do_this_vro_sob = 20262506;

if (fakeinit == 0)
{
    solidcheck = 1;
    autodepth = 1;
}

var this_is_the_google_balls_mod_code = 0;
var man_i_wish_gml_had_else_if_lol = 0;

if (balltype == 0)
{
    sprite_index = spr_gball_b;
    image_xscale = 3;
    image_yscale = 3;
}

if (balltype == 1)
{
    sprite_index = spr_gball_y;
    image_xscale = 2.5;
    image_yscale = 2.5;
}

if (balltype == 2)
{
    sprite_index = spr_gball_r;
    image_xscale = 2.5;
    image_yscale = 2.5;
}

if (balltype == 3)
{
    sprite_index = spr_gball_g;
    image_xscale = 1.3;
    image_yscale = 1.3;
}

fakevsp += grav;
fakey += fakevsp;

if (fakey > 0)
{
    kick = 0;
    fakey = 0;
    fakevsp = -abs(fakevsp * 0.8);
}

if (autodepth)
    scr_depth();

spd = max(spd - 0.05, 0);

if (spd > 0)
{
    var hsp = lengthdir_x(spd, direction);
    var vsp = lengthdir_y(spd, direction);
    var didbounce = false;
    
    if (solidMeeting(x + hsp, y))
    {
        while (!solidMeeting(x + sign(hsp), y))
            x += sign(hsp);
        
        hsp = -hsp;
        didbounce = true;
    }
    else
    {
        x += hsp;
    }
    
    if (solidMeeting(x, y + vsp))
    {
        while (!solidMeeting(x, y + sign(vsp)))
            y += sign(vsp);
        
        vsp = -vsp;
        didbounce = true;
    }
    else
    {
        y += vsp;
    }
    
    if (didbounce)
    {
        direction = point_direction(0, 0, hsp, vsp);
        spd *= 0.8;
    }
}
