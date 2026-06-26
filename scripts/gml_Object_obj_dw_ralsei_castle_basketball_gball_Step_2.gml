if (x < xprevious)
    _angle += abs(x - xprevious);

if (x > xprevious)
    _angle -= abs(x - xprevious);

if (!kick)
{
    if (place_meeting(x, y, obj_mainchara))
    {
        var movespd = 0;
        
        with (obj_mainchara)
            movespd = point_distance(x, y, xprevious, yprevious);
        
        direction = point_direction(x, y, obj_mainchara.x + 19, obj_mainchara.y + 66) + 180;
        kick = 1;
        var mult = clamp(up_h() + down_h() + right_h() + left_h(), 0, 1);
        fakevsp = -4 * (mult * 2);
        spd += movespd;
    }
}
